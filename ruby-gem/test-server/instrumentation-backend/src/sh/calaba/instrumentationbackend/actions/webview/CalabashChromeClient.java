package sh.calaba.instrumentationbackend.actions.webview;

import java.io.IOException;
import java.lang.RuntimeException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Looper;
import sh.calaba.instrumentationbackend.InstrumentationBackend;
import sh.calaba.org.codehaus.jackson.map.ObjectMapper;
import sh.calaba.org.codehaus.jackson.type.TypeReference;

import android.os.Build;
import android.os.ConditionVariable;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;

public class CalabashChromeClient extends WebChromeClient {
    private static final String TAG = CalabashChromeClient.class.getSimpleName();
	private WebChromeClient mWebChromeClient;
	private final WebView webView;
	private final WebFuture scriptFuture;

	public CalabashChromeClient(final WebView webView) {
		this.webView = webView;
		this.scriptFuture = new WebFuture(webView);
		if (Build.VERSION.SDK_INT < 16) { // jelly bean
			try {
				Method methodGetConfiguration = webView.getClass().getMethod(
						"getWebChromeClient");
				mWebChromeClient = (WebChromeClient) methodGetConfiguration
						.invoke(webView);
			} catch (Exception e) {
				throw new RuntimeException(e);
			}
		}  else {
				
				/*
				 * pick up the chromeClient from the webView
				 * this is required because in Jelly Bean there is no getWebChromeClient
				 * above sdk 16.This will help HTML5 hybrid application (Cordova) to pass the prompt messages 
				 * to Native code. Previously the CalabashChromeClient did not populate the mWebChromeClient
				 * which lead to the Cordova.exec messages not forward to the Cordova ChromeClient.
				 */
				Field field = getChromeClientField(webView.getClass());
				if (field == null) {
					mWebChromeClient = getChromeClient();

				}
				else {
					try {
						field.setAccessible(true);
						mWebChromeClient = (WebChromeClient) field.get(webView);
					} catch (IllegalArgumentException e) {					
						e.printStackTrace();
						throw new UnableToFindChromeClientException(e, webView);
					} catch (IllegalAccessException e) {
						
						e.printStackTrace();
						throw new UnableToFindChromeClientException(e, webView);
					}	
				}
                Log.d(TAG, mWebChromeClient != null ? "web view client available" : "web view client unavailable");
		}

        if ( Looper.getMainLooper().getThread() == Thread.currentThread()) {
            webView.setWebChromeClient(this);
        } else {
            InstrumentationBackend.instrumentation.runOnMainSync(new Runnable() {
                @Override
                public void run() {
                    webView.setWebChromeClient(CalabashChromeClient.this);
                }
            });
        }
	}

    private WebChromeClient getChromeClient(){
        try {
            Class superClass = webView.getClass();
            while(!WebView.class.equals(superClass))
                superClass = superClass.getSuperclass();
            Method webViewProviderGetter = superClass.getDeclaredMethod("getWebViewProvider");
            webViewProviderGetter.setAccessible(true);
            Object provider = webViewProviderGetter.invoke(webView);
            if(provider.getClass().getName().equalsIgnoreCase("android.webkit.WebViewClassic")){
                Method chromeClientMethod = provider.getClass().getDeclaredMethod("getWebChromeClient");
                chromeClientMethod.setAccessible(true);
                WebChromeClient chromeClient = (WebChromeClient) chromeClientMethod.invoke(provider);
                if(chromeClient != null)
                    return chromeClient;
            }
            else {
                Field clientsAdapterField = provider.getClass().getDeclaredField("mContentsClientAdapter");
                clientsAdapterField.setAccessible(true);
                Object clientAdapter = clientsAdapterField.get(provider);
                Field chromeClientField = clientAdapter.getClass().getDeclaredField("mWebChromeClient");
                chromeClientField.setAccessible(true);
                WebChromeClient chromeClient = (WebChromeClient) chromeClientField.get(clientAdapter);
                if(chromeClient != null)
                    return chromeClient;
            }

        } catch (NoSuchFieldException e1) {
            Log.i(TAG, e1.getLocalizedMessage());
            e1.printStackTrace();
        } catch (IllegalAccessException e1) {
            Log.i(TAG, e1.getLocalizedMessage());
            e1.printStackTrace();
        } catch (NoSuchMethodException e1) {
            Log.i(TAG, e1.getLocalizedMessage());
            e1.printStackTrace();
        } catch (InvocationTargetException e1) {
            Log.i(TAG, e1.getLocalizedMessage());
            e1.printStackTrace();
        }
        return null;
    }

	/*
	 * returns the chromeClient from the WebView.
	 * recursively moves up to its superClass to get the chromeClient 
	 * if there is no chromeClient it returns null.
	 */
	private Field getChromeClientField(Class currentClass) {
		if (currentClass == null)
			return null;
		try {
			return currentClass.getDeclaredField("chromeClient");
		} catch (NoSuchFieldException e) {

            return getChromeClientField(currentClass.getSuperclass());
		}
	}

	@Override
	public boolean onJsPrompt(WebView view, String url, String message,
			String defaultValue, JsPromptResult r) {
		if (message != null && message.startsWith("calabash:")) {
			r.confirm("CALABASH_ACK");
			System.out.println("onJsPrompt: " + message);
			String jsonResponse = message.replaceFirst("calabash:", "");
			scriptFuture.setResult(jsonResponse);			
			return true;
		} else {
			if (mWebChromeClient == null) {
				r.confirm("CALABASH_ERROR");
				scriptFuture.complete();
				return true;
			} else {
				// TODO I'm not what this case does...(forwards the call to the pre-existing chrome client *sigh*)
				return mWebChromeClient.onJsPrompt(view, url, message,
						defaultValue, r);
			}
		}
	}

	public WebView getWebView() {
		return webView;
	}

	public static CalabashChromeClient prepareWebView(WebView webView) {
		CalabashChromeClient calabashChromeClient = new CalabashChromeClient(
				webView);
		webView.getSettings().setJavaScriptEnabled(true);
		return calabashChromeClient;
	}

	public static List<CalabashChromeClient> findAndPrepareWebViews() {
		List<CalabashChromeClient> webViews = new ArrayList<CalabashChromeClient>();
		ArrayList<View> views = InstrumentationBackend.solo.getCurrentViews();
		for (View view : views) {
			if (view instanceof WebView) {
				WebView webView = (WebView) view;
				webViews.add(prepareWebView(webView));
			}
		}
		return webViews;

	}

	public WebFuture getResult() {
		return scriptFuture;
	}

    public void evaluateCalabashScript(String script) {
        webView.evaluateJavascript(script, new ValueCallback<String>() {
            public void onReceiveValue(String rawResponseJSON) {
                String jsonResponse = null;

                try {
                    jsonResponse = new ObjectMapper().readValue(
                            rawResponseJSON, new TypeReference<String>() {
                    });
                } catch (IOException e) {
                    throw new RuntimeException("Incorrect JSON format returned from javascript: " + rawResponseJSON, e);
                }

                scriptFuture.setResult(jsonResponse);
            }
        });
    }

    @SuppressWarnings("rawtypes")
	public static class WebFuture implements Future {
		private final ConditionVariable eventHandled;
		private volatile boolean complete;
		private String result;
		private final WebView webView;

		public WebView getWebView() {
			return webView;
		}

		public void complete() {
			this.complete = true;
			this.eventHandled.open();
		}

		public WebFuture(WebView webView) {
			this.webView = webView;
			eventHandled = new ConditionVariable();
			result = null;
		}

		public synchronized void setResult(String result) {
			this.result = result;
			this.complete();
		}

		public synchronized String getResult() {
			return this.result;
		}

		public boolean cancel(boolean mayInterruptIfRunning) {
			return false;
		}

		@Override
		public Object get() throws InterruptedException, ExecutionException {
			eventHandled.block();
			return asMap();
		}

		@Override
		public Object get(long timeout, TimeUnit unit)
				throws InterruptedException, ExecutionException,
				TimeoutException {
			eventHandled.block(unit.convert(timeout, TimeUnit.MILLISECONDS));
			return asMap();
		}

		@Override
		public boolean isCancelled() {
			return false;
		}

		@Override
		public boolean isDone() {
			return complete;
		}

		public String getAsString() {				
			try {
				get(10,TimeUnit.SECONDS);
				return getResult();
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}			
		}
		
		@SuppressWarnings("unchecked")
		public Map asMap() {			
			HashMap m = new HashMap();
			m.put("webView", webView);
			m.put("result",getResult());			
			return m;
		}
	}

    public void onProgressChanged(WebView view, int newProgress) {
        if(mWebChromeClient == null){
            super.onProgressChanged(view, newProgress);
        } else {
            mWebChromeClient.onProgressChanged(view, newProgress);
        }
    }

    public void onReceivedTitle(WebView view, String title) {
        if(mWebChromeClient == null){
            super.onReceivedTitle(view, title);
        } else {
            mWebChromeClient.onReceivedTitle(view, title);
        }
    }

    public void onReceivedIcon(WebView view, Bitmap icon) {
        if(mWebChromeClient == null){
            super.onReceivedIcon(view, icon);
        } else {
            mWebChromeClient.onReceivedIcon(view, icon);
        }
    }


    public void onReceivedTouchIconUrl(WebView view, String url,
                                       boolean precomposed) {
        if(mWebChromeClient == null){
            super.onReceivedTouchIconUrl(view, url, precomposed);
        } else {
            mWebChromeClient.onReceivedTouchIconUrl(view, url, precomposed);
        }
    }


    public void onShowCustomView(View view, CustomViewCallback callback) {
        if(mWebChromeClient == null){
            super.onShowCustomView(view, callback);
        } else {
            mWebChromeClient.onShowCustomView(view, callback);
        }
    }

    @Deprecated
    public void onShowCustomView(View view, int requestedOrientation,
                                 CustomViewCallback callback) {
        if(mWebChromeClient == null){
            super.onShowCustomView(view, requestedOrientation, callback);
        } else {
            mWebChromeClient.onShowCustomView(view, requestedOrientation, callback);
        }
    }

    public void onHideCustomView() {
        if(mWebChromeClient == null){
            super.onHideCustomView();
        } else {
            mWebChromeClient.onHideCustomView();
        }
    }

    @Override
    public boolean onCreateWindow(WebView view, boolean isDialog,
                                  boolean isUserGesture, Message resultMsg) {
        if(mWebChromeClient == null){
            return super.onCreateWindow(view, isDialog, isUserGesture, resultMsg);
        } else {
            return mWebChromeClient.onCreateWindow(view, isDialog, isUserGesture, resultMsg);
        }
    }

    public void onRequestFocus(WebView view) {
        if(mWebChromeClient == null){
            super.onRequestFocus(view);
        } else {
            mWebChromeClient.onRequestFocus(view);
        }
    }


    public void onCloseWindow(WebView window) {
        if(mWebChromeClient == null){
            super.onCloseWindow(window);
        } else {
            mWebChromeClient.onCloseWindow(window);
        }
    }

    public boolean onJsAlert(WebView view, String url, String message,
                             JsResult result) {
        if (mWebChromeClient == null) {
            return super.onJsAlert(view, url, message, result);
        } else {
            return mWebChromeClient.onJsAlert(view, url, message, result);
        }
    }


    public boolean onJsConfirm(WebView view, String url, String message,
                               JsResult result) {
        if (mWebChromeClient == null) {
            return super.onJsConfirm(view, url, message, result);
        } else {
            return mWebChromeClient.onJsConfirm(view, url, message, result);
        }
    }

    public boolean onJsBeforeUnload(WebView view, String url, String message,
                                    JsResult result) {
        if (mWebChromeClient == null) {
            return super.onJsBeforeUnload(view, url, message, result);
        } else {
            return mWebChromeClient.onJsBeforeUnload(view, url, message, result);
        }
    }

    @Deprecated
    public void onExceededDatabaseQuota(String url, String databaseIdentifier,
                                        long quota, long estimatedDatabaseSize, long totalQuota,
                                        WebStorage.QuotaUpdater quotaUpdater) {
        if (mWebChromeClient == null) {
            super.onExceededDatabaseQuota(url, databaseIdentifier, quota, estimatedDatabaseSize, totalQuota, quotaUpdater);
        } else {
            mWebChromeClient.onExceededDatabaseQuota(url, databaseIdentifier, quota, estimatedDatabaseSize, totalQuota, quotaUpdater);
        }
    }

    @Deprecated
    public void onReachedMaxAppCacheSize(long requiredStorage, long quota,
                                         WebStorage.QuotaUpdater quotaUpdater) {
        if (mWebChromeClient == null) {
            super.onReachedMaxAppCacheSize(requiredStorage, quota, quotaUpdater);
        } else {
            mWebChromeClient.onReachedMaxAppCacheSize(requiredStorage, quota, quotaUpdater);
        }
    }

    public void onGeolocationPermissionsShowPrompt(String origin,
                                                   GeolocationPermissions.Callback callback) {
        if (mWebChromeClient == null) {
            super.onGeolocationPermissionsShowPrompt(origin, callback);
        } else {
            mWebChromeClient.onGeolocationPermissionsShowPrompt(origin, callback);
        }
    }

    public void onGeolocationPermissionsHidePrompt() {
        if (mWebChromeClient == null) {
            super.onGeolocationPermissionsHidePrompt();
        } else {
            mWebChromeClient.onGeolocationPermissionsHidePrompt();
        }
    }

    public boolean onJsTimeout() {
        if (mWebChromeClient == null) {
            return super.onJsTimeout();
        } else {
            return mWebChromeClient.onJsTimeout();
        }
    }

    @Deprecated
    public void onConsoleMessage(String message, int lineNumber, String sourceID) {
        if (mWebChromeClient == null) {
            super.onConsoleMessage(message, lineNumber, sourceID);
        } else {
            mWebChromeClient.onConsoleMessage(message, lineNumber, sourceID);
        }
    }

    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        if (mWebChromeClient == null) {
            return super.onConsoleMessage(consoleMessage);
        } else {
            return mWebChromeClient.onConsoleMessage(consoleMessage);
        }
    }


    public Bitmap getDefaultVideoPoster() {
        if (mWebChromeClient == null) {
            return super.getDefaultVideoPoster();
        } else {
            return mWebChromeClient.getDefaultVideoPoster();
        }
    }


    public View getVideoLoadingProgressView() {
        if (mWebChromeClient == null) {
            return super.getVideoLoadingProgressView();
        } else {
            return mWebChromeClient.getVideoLoadingProgressView();
        }
    }


    public void getVisitedHistory(ValueCallback<String[]> callback) {
        if (mWebChromeClient == null) {
            super.getVisitedHistory(callback);
        } else {
            mWebChromeClient.getVisitedHistory(callback);
        }
    }

}
