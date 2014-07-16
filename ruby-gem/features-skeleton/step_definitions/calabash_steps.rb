require 'calabash-android/calabash_steps'
require 'calabash-android/management/adb'
require 'calabash-android/operations'


def connected_devices
   lines = `#{Env.adb_path} devices`.split("\n")
   start_index = lines.index{ |x| x =~ /List of devices attached/ } + 1
   lines[start_index..-1].collect { |l| l.split("\t").first }
end



Then(/^I press Continue button$/) do
  wait_for_elements_exist(["* id:'set_pin_button'"], :timeout => 20)
  touch "button id:'set_pin_button'"
end

Then(/^I wait, until load Space$/) do
  wait_for_elements_exist(["* id:'action_bar_title'"], :timeout => 70)
  wait_for_elements_exist(["* id:'action_show_toolbar'"], :timeout => 120)
end


Then(/^I touch log into manager button$/) do
  touch "webView css:input[id=button-1023-btnWrap]"
end

Then(/^I enter "(.*?)" as the Organization name$/) do |arg1|
  wait_for_elements_exist(["* id:'org_name'"], :timeout => 20)
  performAction('drag', 50, 70, 50, 60, 2)
  query "edittext id:'org_name'", :setText => arg1
end

Then(/^I enter user's email "(.*?)" and password "(.*?)"$/) do |arg1, arg2|
  wait_for_elements_exist(["* id:'loginTextField'"], :timeout => 20)
  performAction('drag', 50, 60, 50, 70, 2)
  query "edittext id:'loginTextField'", :setText => arg1 
  wait_for_elements_exist(["* id:'passwordTextField'"], :timeout => 20)
  touch "* id:'passwordTextField'"
  query "edittext id:'passwordTextField'", :setText => arg2
end

Then(/^I enter PIN "(.*?)" and PIn confirmation "(.*?)"$/) do |arg1, arg2|
   wait_for_elements_exist(["* id:'pin'"], :timeout => 20)
   wait_for_elements_exist(["* id:'confirm'"], :timeout => 20)
   query "edittext id:'confirm'", :setText => arg2
   query "edittext id:'pin'", :setText => arg1
end

Then(/^I press Log in button$/) do
  wait_for_elements_exist(["* id:'login_button'"], :timeout => 20)
  touch "button id:'login_button'"
end

Then(/^I press Next button$/) do
  wait_for_elements_exist(["* id:'login_new_org_button'"], :timeout => 40)
  touch "button id:'login_new_org_button'"
end


Then(/^I open organization list menu$/) do
  wait_for_elements_exist(["* id:'action_bar_title'"], :timeout => 60)
  sleep(0.1)
  touch "textview id:'action_bar_title'"
end

Then(/^I press Account button$/) do
  touch "button id:'account_button'"
end

Then(/^I add favorite$/) do
  performAction('wait_for_no_progress_bars') 
  wait_for_elements_exist(["* id:'favorite'"], :timeout => 60)
  sleep(0.1)
  touch "imagebutton id:'favorite'"
  sleep(0.1)
end


Then(/^I press delete organization$/) do
  wait_for_elements_exist(["* id:'delete_org'"], :timeout => 60)
  touch "button id:'delete_org'"
end

Then(/^I press on keyboard "(.*?)"$/) do |arg1|
  system("adb shell input text hnus")
end


Then(/^I touch on screen (\d+) from the left and (\d+) from the top$/) do |arg1, arg2|
  performAction("touch_coordinate", arg1, arg2)
end

Then(/^I press on keyboard "(.*?)" as SAML email$/) do |arg1|
  system("adb shell input text treti@se.cz")
end

Then(/^I press on keyboard "(.*?)" as SAML password$/) do |arg1|
  sleep(1.2)
  system("adb shell input text sasasasa1")
end

Then(/^I press on keyboard "(.*?)" as manager org$/) do |arg1|
  system("adb shell input text muhehe.profiq.cz")
end

Then(/^I press on keyboard "(.*?)" as manager email$/) do |arg1|
  system("adb shell input text pavel.juchelka@profiq.cz")
end


Then(/^I press on keyboard "(.*?)" as manager password$/) do |arg1|
  system("adb shell input text sasasasa1")
end











Then(/^I enter VPN login "(.*?)" and password "(.*?)"$/) do |arg1, arg2|
  wait_for_elements_exist(["* id:'editTextLogin'"], :timeout => 120)
  sleep(0.2) 
  query "edittext id:'editTextLogin'", :setText => arg1
  wait_for_elements_exist(["* id:'editTextPassword'"], :timeout => 120)
  query "edittext id:'editTextPassword'", :setText => arg2
  wait_for_elements_exist(["* id:'vpn_auth_ok'"], :timeout => 120)
  touch "button id:'vpn_auth_ok'"
end



Then(/^I open favorite "(.*?)"$/) do |text|
  sleep(1)
  wait_for( timeout: 60  ) { query("textview", 'text') }
  touch "textview text:'#{text}'"
end


Then(/^I roll favorites$/) do 
  sleep(2)
  touch "ImageButton id:'collapse_button'"
end

Then(/^I choose Forgot password$/) do
  wait_for_elements_exist(["* id:'forgot_password_button'"], :timeout => 10)
  touch "Button id:'forgot_password_button'"
end

Then(/^I reset password$/) do
  performAction('send_key_enter')
  wait_for_elements_exist(["* id:'reset_password'"], :timeout => 10)
  touch "Button id:'reset_password'"
end


Then(/^I choose navigate back button on the top$/) do
  wait_for_elements_exist(["android.widget.ImageView id:'up'"], :timeout => 10)
  touch "android.widget.ImageView id:'up'"
end





Then(/^I touch Aarons google link$/) do
  touch "webview css:[href=http://www.google.com]"
end

Then(/^I switch organization$/) do
  wait_for_elements_exist(["button id:'switch_org_button'"], :timeout => 12)
  touch "button id:'switch_org_button'"
end

Then(/^I enter PIN require "(.*?)"$/) do |arg1|
  wait_for_elements_exist(["* id:'enter_pin'"], :timeout => 12)
  query "edittext id:'enter_pin'",  :setText => arg1
end

Then(/^I press Sign in/) do
  touch "button id:'pinContinue'"
end

Then(/^I open tab view$/) do
  wait_for_elements_exist(["* id:'action_show_toolbar'"], :timeout => 5)
  touch "* id:'action_show_toolbar'"
  wait_for_elements_exist(["* id:'tabs'"], :timeout => 120)
  touch "ImageButton id:'tabs'"
end

Then(/^I add new organization$/) do
  wait_for_elements_exist(["* id:'add_org_button'"], :timeout => 120)
  touch "Button id:'add_org_button'"
end




Then(/^I enter SAML onelogin password "(.*?)"$/) do |arg1|
  set_text "CordovaWebView css:input[id=login]",  :setText => arg1
end


Then(/^I enter SAML onelogin email "(.*?)"$/) do |arg1|
  set_text "webView xpath:'//input[@id=email]'/input[@name=email]",  :setText => arg1
end


Then(/^I open link$/) do
   touch("webView css:'Link' href:'http://www.google.com' ")
end

Then(/^I save file$/) do
  touch "ImageButton id:'save'"
end

Then(/^I should see file was saved$/) do
  wait_for( timeout: 60  ) { query("TextView id:'saved_masg'") }
end

Then(/^I choose "(.*?)" app$/) do |text|
  wait_for( timeout: 60  ) { query("textview", 'text') }
  sleep(1.5)
  touch "textview text:'#{text}'"
end

Then(/^I choose "(.*?)" app and wait until loads$/) do |text|
  wait_for( timeout: 60  ) { query("textview", 'text') }
  sleep(1.5)
  touch "textview text:'#{text}'"
  sleep(1.5)
  element_does_not_exist("* id:'action_show_toolbar'") 
  wait_for_elements_do_not_exist(["* id:'progress_horizontal'"], :timeout => 90, :post_timeout => 1)
end



Then(/^I open action toolbar button$/) do
  wait_for_elements_exist(["* id:'action_show_toolbar'"], :timeout => 5)
  touch "* id:'action_show_toolbar'"
end

Then(/^I close action toolbar button$/) do
  wait_for_elements_exist(["* id:'action_show_toolbar'"], :timeout => 5)
  touch "* id:'action_show_toolbar'"
end

Then(/^I enter into manager organization name "(.*?)" email "(.*?)" password "(.*?)"$/) do |arg1, arg2, arg3|
  performAction('wait_for_no_progress_bars') 
  sleep(4)
  performAction('wait_for_no_progress_bars')
  set_text "webView css:input[id=textfield-1017-inputEl]", arg2
  set_text "webView css:input[id=textfield-1021-inputEl]", arg3
  set_text "webView css:input[id=textfield-1016-inputEl]", arg1
  performAction('send_key_enter')
  performAction('wait_for_no_progress_bars') 
  sleep(14) 
  performAction('wait_for_no_progress_bars')
end

Then(/^I wait until I see create organization page$/) do
  wait_for_elements_exist(["* id:'org_name'"], :timeout => 220)
end


Then(/^I enter "(.*?)" as the email$/) do |arg1|
  wait_for_elements_exist(["* id:'loginTextField'"], :timeout => 120)
  query "edittext id:'loginTextField'", :setText => arg1
  touch "* id:'passwordTextField'"
  performAction('send_key_enter')
end

Then(/^I enter "(.*?)" as the email on Nexus5$/) do |arg1|
  wait_for_elements_exist(["* id:'loginTextField'"], :timeout => 120)
  query "edittext id:'loginTextField'", :setText => arg1
  touch "* id:'passwordTextField'"
end



Then(/^I slide down in list of apps$/) do
  sleep(2)
  performAction('drag', 50, 70, 50, 40, 30)
end

Then(/^I slide down in list of apps with Nexus 5 slightly$/) do
  sleep(3)
  performAction('drag', 50, 50, 70, 40, 30)
end


Then(/^I slide down in list of apps slightly$/) do
  sleep(3)
  performAction('drag', 50, 50, 70, 40, 30)
end

Then(/^I slide down in list of apps with Nexus 5$/) do
  sleep(3)
  performAction('drag', 50, 50, 70, 20, 1)
end




Then(/^I refresh list of apps in Nexus 5$/) do
  sleep(3)
  performAction('drag', 50, 40, 50, 90, 30)
  wait_for_elements_exist(["* id:'ptr_text'"], :timeout => 10)
end





Then(/^I delete organization from tab view$/) do
  wait_for_elements_exist(["* id:'action_bar_title'"], :timeout => 70)
  element_does_not_exist("* id:'action_show_toolbar'")
  sleep(0.1)
  touch "textview id:'action_bar_title'"
  wait_for_elements_exist(["* id:'account_button'"], :timeout => 5)
  touch "button id:'account_button'"
  wait_for_elements_exist(["* id:'delete_org'"], :timeout => 15)
  touch "button id:'delete_org'"
  performAction('wait_for_text', "Yes", 12)
  performAction('click_on_text',"Yes")
end


Then(/^I delete organization$/) do
  wait_for_elements_exist(["* id:'action_bar_title'"], :timeout => 70)
  wait_for_elements_exist(["* id:'action_show_toolbar'"], :timeout => 120)
  sleep(0.1)
  touch "textview id:'action_bar_title'"
  wait_for_elements_exist(["* id:'account_button'"], :timeout => 5)
  touch "button id:'account_button'"
  wait_for_elements_exist(["* id:'delete_org'"], :timeout => 15)
  touch "button id:'delete_org'"
  performAction('wait_for_text', "Yes", 12)
  performAction('click_on_text',"Yes")
end

Then(/^I wait until I see entering organization name page$/) do
  performAction('wait_for_text', "Organization name", 120)
end


Then(/^I open in new tab$/) do
  performAction('wait_for_text', "Open in new tab", 12)
  performAction('click_on_text',"Open in new tab")
end

Then(/^I login to Sace with org "(.*?)" email "(.*?)" password "(.*?)" and PINs "(.*?)" Nexus5$/) do |arg1,arg2,arg3,arg4|
  wait_for_elements_exist(["* id:'org_name'"], :timeout => 20)
  touch "* id:'org_name'"
  query "edittext id:'org_name'", :setText => arg1
  wait_for_elements_exist(["* id:'login_new_org_button'"], :timeout => 20)
  touch "button id:'login_new_org_button'"
  wait_for_elements_exist(["* id:'loginTextField'"], :timeout => 20)
  touch "* id:'loginTextField'"
  query "edittext id:'loginTextField'", :setText => arg2 
  wait_for_elements_exist(["* id:'passwordTextField'"], :timeout => 20)
  touch "* id:'passwordTextField'"
  query "edittext id:'passwordTextField'", :setText => arg3
  wait_for_elements_exist(["* id:'login_button'"], :timeout => 20)
  touch "button id:'login_button'"
  sleep(1)
  wait_for_elements_exist(["* id:'pin'"], :timeout => 30)
  wait_for_elements_exist(["* id:'confirm'"], :timeout => 30)
  query "edittext id:'confirm'", :setText => arg4
  query "edittext id:'pin'", :setText => arg4
  wait_for_elements_exist(["* id:'set_pin_button'"], :timeout => 20)
  touch "button id:'set_pin_button'"
  wait_for_elements_exist(["* id:'action_bar_title'"], :timeout => 70)
  sleep(1)
end


Then(/^I login to Sace client with org "(.*?)" email "(.*?)" password "(.*?)"$/) do |arg1,arg2,arg3|
  wait_for_elements_exist(["* id:'org_name'"], :timeout => 20)
  query "edittext id:'org_name'", :setText => arg1
  wait_for_elements_exist(["* id:'login_new_org_button'"], :timeout => 20)
  touch "button id:'login_new_org_button'"
  wait_for_elements_exist(["* id:'loginTextField'"], :timeout => 20)
  query "edittext id:'loginTextField'", :setText => arg2 
  wait_for_elements_exist(["* id:'passwordTextField'"], :timeout => 20)
  query "edittext id:'passwordTextField'", :setText => arg3
  wait_for_elements_exist(["* id:'login_button'"], :timeout => 20)
  touch "button id:'login_button'"
  wait_for_elements_exist(["* id:'action_bar_title'"], :timeout => 70)
  sleep(1)
end



Then(/^I navigate back from account to list of apps$/) do
  wait_for_elements_exist(["* id:'up'"], :timeout => 5)
  touch "* id:'up'"
end

Then(/^I read terms of service$/) do
  performAction('wait_for_text', "Terms of Service", 12)
  sleep(0.3)
  performAction('click_on_text',"Terms of Service")
  sleep(2.3)
  touch "button id:'button3'"
end


Then(/^I read attributions$/) do
  performAction('wait_for_text', "Attributions", 12)
  sleep(0.3)
  performAction('click_on_text',"Attributions")
  sleep(2.3)
  touch "button id:'button3'"
end

Then(/^I click on reset PIN button$/) do
  performAction('wait_for_text', "Reset PIN", 12)
  sleep(0.3)
  performAction('click_on_text',"Reset PIN")
  performAction('wait_for_text', "Current PIN", 12)
end

Then(/^I reset current PIN "(.*?)" to "(.*?)" and confirmation "(.*?)"$/) do |arg1, arg2, arg3|
  wait_for_elements_exist(["* id:'old_pin'"], :timeout => 20)
  wait_for_elements_exist(["* id:'new_pin'"], :timeout => 20)
  wait_for_elements_exist(["* id:'confirm_new_pin'"], :timeout => 20)
  performAction('enter_text_into_id_field', arg1, 'old_pin')
  performAction('enter_text_into_id_field', arg2, 'new_pin')
  performAction('enter_text_into_id_field', arg3, 'confirm_new_pin')
  touch "button id:'save'"
end

Then(/^I close organization list menu$/) do

  wait_for_elements_exist(["* id:'action_bar_title'"], :timeout => 60)
  sleep(0.1)
  touch "textview id:'action_bar_title'"
end

Then(/^I navigate through history back$/) do
  wait_for_elements_exist(["* id:'action_show_toolbar'"], :timeout => 5)
  touch "* id:'action_show_toolbar'"
  wait_for_elements_exist(["* id:'go_back'"], :timeout => 120)
  touch "ImageButton id:'go_back'"
  wait_for_elements_exist(["* id:'action_show_toolbar'"], :timeout => 5)
  touch "* id:'action_show_toolbar'"
end

Then(/^I navigate through history forward$/) do
  wait_for_elements_exist(["* id:'action_show_toolbar'"], :timeout => 5)
  touch "* id:'action_show_toolbar'"
  wait_for_elements_exist(["* id:'go_forward'"], :timeout => 120)
  touch "ImageButton id:'go_forward'"
  wait_for_elements_exist(["* id:'action_show_toolbar'"], :timeout => 5)
  touch "* id:'action_show_toolbar'"
end



Then(/^I click on back button in entering org page$/) do
  wait_for_elements_exist(["* id:'org_name'"], :timeout => 20)
  performAction('drag', 50, 70, 50, 60, 2)
  wait_for_elements_exist(["* id:'back_button'"], :timeout => 30)
  touch "* id:'back_button'"
end

Then(/^I click on back button in entering email page$/) do
  wait_for_elements_exist(["* id:'button'"], :timeout => 30)
  touch "* id:'button'"
end


Then(/^I press back button on the top$/) do
  wait_for_elements_exist(["* id:'home'"], :timeout => 30)
  touch "* id:'home'"
end



Then(/^I refresh page$/) do
  wait_for_elements_exist(["* id:'action_show_toolbar'"], :timeout => 5)
  touch "* id:'action_show_toolbar'"
  wait_for_elements_exist(["* id:'reload'"], :timeout => 30)
  touch "* id:'reload'"
  wait_for_elements_exist(["* id:'action_show_toolbar'"], :timeout => 5)
  touch "* id:'action_show_toolbar'"
end

Then(/^I cancel VPN auth form$/) do

  wait_for_elements_exist(["* id:'vpn_auth_cancel'"], :timeout => 30)
  touch "* id:'vpn_auth_cancel'"
  sleep(2)
  element_does_not_exist("* id:'vpn_auth_cancel'") 
end


Then(/^I try to find login element form from Act-On$/) do
  sleep(1.8)
  performAction('wait_for_no_progress_bars')
  sleep(1.8)
  set_text "webView css:input[id=login]",  :setText => 'idk'
end


Then /^I close new tab$/ do
  wait_for_elements_exist(["* id:'close_tab_button'"], :timeout => 30)
  touch "* id:'close_tab_button'"
  wait_for_elements_do_not_exist(["* id:'close_tab_button'"], :timeout => 90, :post_timeout => 1)
end



Then /^I wait until is page loaded$/ do
  sleep(1)
  performAction('wait_for_no_progress_bars') 
end


Then /^I wait until page under VPN is loaded$/ do
  sleep(0.1)
    performAction('wait_for_no_progress_bars')
  sleep(0.1)
    performAction('wait_for_no_progress_bars')
  sleep(0.1)
    performAction('wait_for_no_progress_bars')
  sleep(0.1)
    performAction('wait_for_no_progress_bars')
  sleep(0.1)
    performAction('wait_for_no_progress_bars')
  sleep(0.1)
    performAction('wait_for_no_progress_bars')
  sleep(0.1)
    performAction('wait_for_no_progress_bars')
  sleep(0.1)
    performAction('wait_for_no_progress_bars')
  sleep(0.1)
    performAction('wait_for_no_progress_bars')
  sleep(0.1)
    performAction('wait_for_no_progress_bars')
  sleep(0.1)
    performAction('wait_for_no_progress_bars')
end


Then /^I navigate back in SAML page$/ do
  wait_for_elements_exist(["* id:'back_button'"], :timeout => 30)
  sleep(2)
  touch "* id:'back_button'"
end

Then /^I press upper tab$/ do
  wait_for_elements_exist(["* id:'title'"], :timeout => 30)
  touch "* id:'title'"
end

Then(/^Space should not load$/) do
   sleep(6)
   element_does_not_exist("* id:'action_show_toolbar'") 
end



Then(/^I reinstall the Space$/) do
   reinstall_apps()
end

Then(/^I see message about unreachable page$/) do
    wait_for_elements_exist(["* id:'message'"], :timeout => 30)
end


Then(/^I choose "(.*?)" app and see message$/) do |text|
  wait_for( timeout: 60  ) { query("textview", 'text') }
  sleep(1.5)
  touch "textview text:'#{text}'"
  wait_for_elements_exist(["* id:'message'"], :timeout => 30)
end






Then /^I press the menu key$/ do
  performAction('press_menu')
end

Then /^I check only one tab exist$/ do
  element_does_not_exist("* id:'close_tab_button'")
end

Then /^I select the "([^\"]*)" tab$/ do | tab |
  touch("android.widget.TabWidget descendant TextView {text LIKE[c] '#{tab}'}")
end



Then(/^I login to Sace with org "(.*?)" email "(.*?)" password "(.*?)" and PINs "(.*?)"$/) do |arg1,arg2,arg3,arg4|
  wait_for_elements_exist(["* id:'org_name'"], :timeout => 20)
  performAction('drag', 50, 70, 50, 60, 2)
  touch "* id:'org_name'"
  query "edittext id:'org_name'", :setText => arg1
  wait_for_elements_exist(["* id:'login_new_org_button'"], :timeout => 20)
  touch "button id:'login_new_org_button'"

  wait_for_elements_exist(["* id:'loginTextField'"], :timeout => 20)
  performAction('drag', 50, 60, 50, 70, 2)
  query "edittext id:'loginTextField'", :setText => arg2 
  wait_for_elements_exist(["* id:'passwordTextField'"], :timeout => 20)
  touch "* id:'passwordTextField'"
  query "edittext id:'passwordTextField'", :setText => arg3
  wait_for_elements_exist(["* id:'login_button'"], :timeout => 20)
  touch "button id:'login_button'"
  sleep(1)
  wait_for_elements_exist(["* id:'pin'"], :timeout => 30)
  wait_for_elements_exist(["* id:'confirm'"], :timeout => 30)
  query "edittext id:'confirm'", :setText => arg4
  query "edittext id:'pin'", :setText => arg4
  wait_for_elements_exist(["* id:'set_pin_button'"], :timeout => 20)
  touch "button id:'set_pin_button'"
  wait_for_elements_exist(["* id:'action_bar_title'"], :timeout => 70)
  sleep(1)
end


Then(/^I press "(.*?)" in tab name$/) do |arg1|
  wait_for_elements_exist(["* id:'title'"], :timeout => 70)
  touch "android.widget.TextView id:'title' text:'#{arg1}'"
end

Then(/^I maximize the tab$/) do 
  wait_for_elements_exist(["* id:'title'"], :timeout => 70)
  touch "android.widget.TextView id:'title'"
end

Then(/^I maximize parent tab$/) do 
  wait_for_elements_exist(["* id:'title'"], :timeout => 70)
  touch "android.widget.TextView id:'title'"
end

Then(/^I open first tab$/) do |arg1|
  wait_for_elements_exist(["* id:'title'"], :timeout => 70)
  sleep(0.5)
  touch "* id:'title'"
end


Then(/^I press on a link$/) do
if $phone==["s3mini"]
  performAction("touch_coordinate", 53, 310)
  performAction("touch_coordinate", 53, 310)
  performAction("touch_coordinate", 53, 310)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 200, 640)
end
end

Then(/^I do a long press on a link$/) do
if $phone==["s3mini"]
  performAction("long_press_coordinate", 53, 310)
elsif $phone==["nexus5"]
  performAction("long_press_coordinate", 300, 900)
end
end

Then /^I login to SAML OneLogin on user treti@se.cz$/ do
  sleep(10)
if $phone==["s3mini"]
  performAction("touch_coordinate", 82, 335)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 240, 680)
end
  system("adb shell input text treti@se.cz")
  sleep(1)
  performAction('send_key_enter')
  sleep(1)
  system("adb shell input text sasasasa1")
  performAction('send_key_enter')
end


Then /^I login to SAML OneLogin on user dalsi@se.cz$/ do
  sleep(10)
if $phone==["s3mini"]
  performAction("touch_coordinate", 82, 335)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 240, 680)
end
  system("adb shell input text dalsi@se.cz")
  sleep(1)
  performAction('send_key_enter')
  sleep(1)
  system("adb shell input text sasasasa1")
  performAction('send_key_enter')
  wait_for_elements_exist(["* id:'message'"], :timeout => 30)
end

Then(/^I open new tab 151 times$/) do
$x = 0
$num = 151
while $x < $num do
	if $phone==["s3mini"]
  		performAction("long_press_coordinate", 53, 310)
	elsif $phone==["nexus5"]
  		performAction("long_press_coordinate", 300, 900)
	end
  	performAction('wait_for_text', "Open in new tab", 12)
  	performAction('click_on_text',"Open in new tab")
  	wait_for_elements_exist(["* id:'action_show_toolbar'"], :timeout => 5)
  	touch "* id:'action_show_toolbar'"
  	wait_for_elements_exist(["* id:'tabs'"], :timeout => 120)
  	touch "ImageButton id:'tabs'"
  	wait_for_elements_exist(["* id:'title'"], :timeout => 70)
  	touch "android.widget.TextView id:'title'"
	$x +=1
end
end


Then(/^I close new tab 151 times$/) do
$x = 0
$num = 151
while $x < $num do
  wait_for_elements_exist(["* id:'close_tab_button'"], :timeout => 30)
  touch "* id:'close_tab_button'"
  $x +=1
end
end


Then(/^I wipe device in manager$/) do

if $phone==["s3mini"]
  performAction('wait_for_no_progress_bars')
  sleep(15)
  performAction("touch_coordinate", 91, 337)
  performAction('wait_for_no_progress_bars')
  sleep(10)
  performAction("touch_coordinate", 268, 321)
  performAction("touch_coordinate", 268, 321)
  performAction("touch_coordinate", 268, 321)
  sleep(5)
  performAction('drag', 70, 70, 70, 40, 30)
  performAction('drag', 70, 70, 70, 40, 30)
  sleep(0.5)
  performAction('drag', 70, 70, 70, 40, 30)
  performAction('drag', 70, 70, 70, 40, 30)
  performAction('drag', 70, 70, 70, 40, 30)
  sleep(1)
  performAction("touch_coordinate", 418, 491)
  sleep(2)
  performAction("touch_coordinate", 251, 530)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 150, 650)
  sleep(10)
  performAction("touch_coordinate", 474, 638)
  sleep(5)
  performAction("touch_coordinate", 794, 1700)
  sleep(5)
  performAction("touch_coordinate", 420, 1130)
end


end



