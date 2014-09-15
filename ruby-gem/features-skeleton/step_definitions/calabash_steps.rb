require 'calabash-android/calabash_steps'
require 'calabash-android/management/adb'
require 'calabash-android/operations'


def connected_devices
   lines = `#{Env.adb_path} devices`.split("\n")
   start_index = lines.index{ |x| x =~ /List of devices attached/ } + 1
   lines[start_index..-1].collect { |l| l.split("\t").first }
end

def siesta_wipe
exec('ls ~')
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
  wait_for_elements_exist(["* id:'loginTextField'"], :timeout => 40)
  performAction('drag', 50, 60, 50, 70, 2)
  query "edittext id:'loginTextField'", :setText => arg1 
  wait_for_elements_exist(["* id:'passwordTextField'"], :timeout => 40)
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
  wait_for_elements_exist(["* id:'login_button'"], :timeout => 30)
  sleep(0.4)
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
  wait_for_elements_exist(["* id:'account_button'"], :timeout => 60)
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
  wait_for( timeout: 11  ) { query("TextView id:'saved_masg'") }
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
if $phone==["nexus10"]
  performAction('drag', 10, 10, 70, 40, 30)
end
end

Then(/^I slide down in list of apps unknown$/) do
  sleep(3)
  performAction('drag', 50, 50, 70, 20, 1)
end

Then(/^I slide down in list of apps with Nexus 5 slightly$/) do
  sleep(3)
  performAction('drag', 50, 50, 70, 40, 30)
end


Then(/^I slide down in list of apps slightly$/) do
  sleep(3)
if $phone==["nexus10"]
  performAction('drag', 10, 10, 70, 40, 30)
elsif $phone==["nexus5"]
  performAction('drag', 50, 50, 70, 40, 30)
elsif $phone==["s3mini"]
  performAction('drag', 50, 50, 70, 40, 30)
end
end






Then(/^I refresh list of apps$/) do
  sleep(3)
if $phone==["nexus10"]
  performAction('drag', 10, 10, 50, 90, 30)
elsif $phone==["nexus5"]
  performAction('drag', 50, 40, 50, 90, 30)
elsif $phone==["s3mini"]
  performAction('drag', 50, 40, 50, 90, 30)
end

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
  performAction('wait_for_no_progress_bars')
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
  sleep(0.1)
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

Then /^I check there is no new tab$/ do
  wait_for_elements_do_not_exist(["* id:'close_tab_button'"], :timeout => 90, :post_timeout => 1)
end

Then /^I close tab$/ do
  wait_for_elements_exist(["* id:'close_tab_button'"], :timeout => 30)
  touch "* id:'close_tab_button'"
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
   sleep(12)
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
if $phone==["s3mini"]
  performAction("touch_coordinate", 25, 131)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 240, 280)
end
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
  performAction('wait_for_no_progress_bars')
if $phone==["s3mini"]
  performAction("touch_coordinate", 53, 310)
  performAction("touch_coordinate", 53, 310)
  performAction("touch_coordinate", 53, 310)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 200, 640)
elsif $phone==["nexus10"]
  performAction("touch_coordinate", 42, 441)
end
  performAction('wait_for_no_progress_bars')
end

Then(/^I do a long press on a link$/) do
if $phone==["s3mini"]
  performAction("long_press_coordinate", 53, 310)
elsif $phone==["nexus5"]
  performAction("long_press_coordinate", 300, 900)
elsif $phone==["nexus10"]
  performAction("long_press_coordinate", 42, 441)
end
end

Then(/^I do a long press on a link of Aarons page$/) do
if $phone==["s3mini"]
  performAction("long_press_coordinate", 133, 248)
elsif $phone==["nexus5"]
  performAction("long_press_coordinate", 430, 507)
elsif $phone==["nexus10"]
  performAction("long_press_coordinate", 80, 207)
end
end






Then /^I login to SAML OneLogin on user treti@se.cz$/ do
  sleep(13)
if $phone==["s3mini"]
  performAction("touch_coordinate", 82, 335)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 240, 680)
elsif $phone==["nexus10"]
  performAction("touch_coordinate", 756, 464)
end
  system("adb shell input text treti@se.cz")
  sleep(1)
  performAction('send_key_enter')
  sleep(2)
  system("adb shell input text sasasasa1")
  performAction('send_key_enter')
end


Then /^I login to SAML OneLogin on user dalsi@se.cz$/ do
  sleep(13)
if $phone==["s3mini"]
  performAction("touch_coordinate", 82, 335)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 240, 680)
elsif $phone==["nexus10"]
  performAction("touch_coordinate", 756, 464)
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
elsif $phone==["nexus10"]
  performAction("touch_coordinate", 95, 445)
  sleep(12)
  performAction("touch_coordinate", 345, 442)
  sleep(7)
  performAction("touch_coordinate", 2030, 988)
  sleep(7)
  performAction("touch_coordinate", 1205, 905)
end
end


Then(/^PIN entering page should not load$/) do
   sleep(4)
   element_does_not_exist("* id:'pin'")
end






Then(/^I check there is no favorite button$/) do
  performAction('wait_for_no_progress_bars') 
  element_does_not_exist("* id:'favorite'")
end

Then(/^I should not see action button$/) do
  element_does_not_exist("* id:'action_show_toolbar'")
end




Then(/^I login to SAML OneLogin on user treti@se.cz with incorrect password$/) do
  sleep(10)
  element_does_not_exist("* id:'pin'")
if $phone==["s3mini"]
  performAction("touch_coordinate", 82, 335)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 240, 680)
end
  system("adb shell input text treti@se.cz")
  sleep(1)
  performAction('send_key_enter')
  sleep(1)
  system("adb shell input text sasasasa3")
  performAction('send_key_enter')
end

Then(/^I login to SAML OneLogin on user with non-existing email$/) do
  sleep(10)
  element_does_not_exist("* id:'pin'")
if $phone==["s3mini"]
  performAction("touch_coordinate", 82, 335)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 240, 680)
end
  system("adb shell input text tretai@se.cz")
  sleep(1)
  performAction('send_key_enter')
  sleep(1)
  system("adb shell input text sasasasa2")
  performAction('send_key_enter')
end


Then(/^I login to SAML OneLogin on email with and special chars$/) do
  sleep(13)
  element_does_not_exist("* id:'pin'")
if $phone==["s3mini"]
  performAction("touch_coordinate", 82, 335)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 240, 680)
end
  system("adb shell input text //@se.cz")
  sleep(1)
  performAction('send_key_enter')
  sleep(1)
  system("adb shell input text sasasasa2")
  performAction('send_key_enter')
end

Then /^I should see at least two tabs$/ do
  wait_for_elements_exist(["* id:'close_tab_button'"], :timeout => 30)
end

Then(/^I click on tab view icon from tab view$/) do
  wait_for_elements_exist(["* id:'tabs'"], :timeout => 120)
  touch "ImageButton id:'tabs'"
end

Then(/^I navigate up$/) do
  sleep(0.1)
  performAction('drag', 50, 50, 55, 80, 30)
end

Then(/^I push reset PIN button$/) do
  performAction('wait_for_text', "Reset PIN", 12)
  sleep(0.3)
  performAction('click_on_text',"Reset PIN")
end


Then(/^I download an image$/) do
 performAction('wait_for_no_progress_bars')
if $phone==["s3mini"]
  performAction("long_press_coordinate", 400, 400)
elsif $phone==["nexus5"]
  performAction("long_press_coordinate", 600, 600)
elsif $phone==["nexus10"]
  performAction('drag', 50, 50, 80, 20, 10)
  sleep(0.2)
  performAction('drag', 50, 50, 80, 50, 10)
  performAction("long_press_coordinate", 1400, 1400)
  performAction('wait_for_text', "Open in new tab", 3)
  performAction('click_on_text',"Open in new tab")
end
  performAction('wait_for_no_progress_bars')
  performAction('wait_for_text', "Open in new tab", 3)
  performAction('click_on_text',"Open in new tab")
end

Then(/^I check file type selection and open image from sss$/) do
 performAction('wait_for_no_progress_bars')
if $phone==["s3mini"]
  performAction("touch_coordinate", 53, 310)
  performAction("touch_coordinate", 53, 310)
  performAction("touch_coordinate", 53, 310)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 133, 293)
  performAction('wait_for_no_progress_bars')
  performAction("touch_coordinate", 252, 421)
  sleep(0.2)
  performAction("touch_coordinate", 379, 631)
  sleep(0.2)
  performAction("touch_coordinate", 394, 421)
  sleep(1.2)
  performAction("touch_coordinate", 479, 631)
  performAction('wait_for_no_progress_bars')
elsif $phone==["nexus10"]
  performAction("touch_coordinate", 99, 230)
  performAction('wait_for_no_progress_bars')
  performAction("touch_coordinate", 165, 293)
  performAction('wait_for_no_progress_bars')
  performAction("touch_coordinate", 253, 293)
  performAction('wait_for_no_progress_bars')
  performAction("touch_coordinate", 587, 422)
  performAction('wait_for_no_progress_bars')

end
end

Then(/^I delete image from sss$/) do
if $phone==["s3mini"]
  performAction("touch_coordinate", 441, 216)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 999, 436)
elsif $phone==["nexus10"]
  performAction("touch_coordinate", 2521, 303)
end
end

Then(/^I delete image$/) do
if $phone==["s3mini"]
  performAction("touch_coordinate", 441, 216)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 999, 436)
elsif $phone==["nexus10"]
  performAction("touch_coordinate", 2521, 303)
end
end

Then(/^I search by image keyword$/) do
 performAction('wait_for_no_progress_bars')
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 133, 293)
elsif $phone==["nexus10"]
  performAction("touch_coordinate", 111, 207)
end
  system("adb shell input text koom")
end

Then(/^I search image by keyword sss$/) do
 performAction('wait_for_no_progress_bars')
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 133, 293)
elsif $phone==["nexus10"]
  performAction("touch_coordinate", 111, 207)
end
  system("adb shell input text sss2")
end

Then(/^I search image by keyword jpg$/) do
 performAction('wait_for_no_progress_bars')
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 133, 293)
elsif $phone==["nexus10"]
  performAction("touch_coordinate", 111, 207)
end
  system("adb shell input text jpg")
end

Then(/^I search image by keyword of non exist image$/) do 
 performAction('wait_for_no_progress_bars')
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
  performAction("touch_coordinate", 133, 293)
elsif $phone==["nexus10"]
  performAction("touch_coordinate", 111, 207)
end
  system("adb shell input text IamVercingetorix")
end

Then(/^I try that I can delete image$/) do
 performAction('wait_for_no_progress_bars')
 sleep(1.5)
if $phone==["s3mini"]
  performAction("touch_coordinate", 441, 279)
  sleep(1.5)
  performAction("touch_coordinate", 441, 279)
  sleep(1.5)
  performAction("touch_coordinate", 441, 279)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 999, 563)
  sleep(1.5)
  performAction("touch_coordinate", 999, 563)
  sleep(1.5)
  performAction("touch_coordinate", 999, 563)
elsif $phone==["nexus10"]
  performAction("touch_coordinate", 2501, 402)
  sleep(1.5)
  performAction("touch_coordinate", 2501, 402)
  sleep(1.5)
  performAction("touch_coordinate", 2501, 402)
end
  wait_for_elements_exist(["* id:'button2'"], :timeout => 10)
  touch "* id:'button2'"
end

Then(/^I try that I can not delete image$/) do
 performAction('wait_for_no_progress_bars')
 sleep(1.5)
if $phone==["s3mini"]
  performAction("touch_coordinate", 441, 279)
  sleep(1.5)
  performAction("touch_coordinate", 441, 279)
  sleep(1.5)
  performAction("touch_coordinate", 441, 279)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 999, 563)
  sleep(1.5)
  performAction("touch_coordinate", 999, 563)
  sleep(1.5)
  performAction("touch_coordinate", 999, 563)
end
end


Then(/^I enter fulscreen app$/) do
 performAction('wait_for_no_progress_bars')
if $phone==["s3mini"]
  performAction("touch_coordinate", 50, 250)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 112, 507)
end
end

Then(/^I check it is fullscreen$/) do
  element_does_not_exist("* id:'action_show_toolbar'")
end

Then(/^I leave fullscreen$/) do
if $phone==["s3mini"]
  performAction("touch_coordinate", 140, 150)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 302, 290)
end
end



Then(/^I use check button and I am in fullscreen$/) do
if $phone==["s3mini"]
  performAction("touch_coordinate", 250, 130)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 510, 290)
end
end

Then(/^I use check button and I am not in fullscreen$/) do
if $phone==["s3mini"]
  performAction("touch_coordinate", 250, 250)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 510, 507)
end
end

Then(/^I use check via bridge button and I am in fullscreen$/) do
if $phone==["s3mini"]
  performAction("touch_coordinate", 103, 190)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 774, 290)
end
end

Then(/^I use check via bridge button and I am not in fullscreen$/) do
if $phone==["s3mini"]
  performAction("touch_coordinate", 107, 300)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 774, 500)
end
end

Then(/^I should see message that you are not in full screen$/) do
  wait_for_elements_exist(["* id:'message'"], :timeout => 30)
  wait_for( timeout: 10  ) { query("textview", 'Fullscreen? NO') }
  touch "* text:'OK'"
end

Then(/^I should see message that you are in full screen$/) do
  wait_for_elements_exist(["* id:'message'"], :timeout => 30)
  wait_for( timeout: 10  ) { query("textview", 'Fullscreen? YES') }
  touch "* text:'OK'"
end


Then(/^I should see message that fullscreen is disabled$/) do
  wait_for_elements_exist(["* id:'message'"], :timeout => 30)
  wait_for( timeout: 10  ) { query("textview", 'Fullscreen? disabled') }
  touch "* text:'OK'"
end

Then(/^I should see message that fullscreen is enabled$/) do
  wait_for_elements_exist(["* id:'message'"], :timeout => 30)
  wait_for( timeout: 10  ) { query("textview", 'Fullscreen? enabled') }
  touch "* text:'OK'"
end

Then(/I open big image from the link as new tab$/) do
if $phone==["s3mini"]
  performAction("touch_coordinate", 53, 310)
  performAction("touch_coordinate", 53, 310)
  performAction("touch_coordinate", 53, 310)
elsif $phone==["nexus5"]
  sleep(5)
  performAction('drag', 70, 70, 70, 40, 30)
  sleep(1)
  performAction('drag', 70, 70, 70, 40, 30)
  sleep(2)
  performAction("long_press_coordinate", 964, 1640)
  performAction('wait_for_text', "Open in new tab", 3)
  performAction('click_on_text',"Open in new tab")
end
end

Then(/^I choose Collection Download$/) do
 performAction('wait_for_no_progress_bars')
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 323, 1160)
end
 performAction('wait_for_no_progress_bars')
end


Then(/^I download some image in that API$/) do
 performAction('wait_for_no_progress_bars')
  sleep(2.5)
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 281, 507)
end
  sleep(1.5)
  system("adb shell input text http://4.bp.blogspot.com/_8r5KcavfltE/TU4w3tCRmrI/AAAAAAAAXs4/kg2lrLV49Ek/s660/Orion_aveugle_cherchant_le_soleil.jpg")
if $phone==["s3mini"]
  performAction("touch_coordinate", 160, 596)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 166, 600)
end
  sleep(4.5)
end

Then(/^I open downloaded image in that API$/) do
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 415, 815)
end
end

Then(/^I delete downloaded file in that API$/) do
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 136, 676)
end
end

Then(/^I download some pdf in that API$/) do
 performAction('wait_for_no_progress_bars')
  sleep(2.5)
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 281, 507)
end
  sleep(1.5)
  system("adb shell input text http://www.rebeccalouiselaw.com/wp-content/uploads/2014/08/example_pdf.pdf")
if $phone==["s3mini"]
  performAction("touch_coordinate", 160, 596)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 166, 600)
end
  sleep(4.5)
end

Then(/^I download some html in that API$/) do
 performAction('wait_for_no_progress_bars')
  sleep(2.5)
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 281, 507)
end
  sleep(1.5)
  system("adb shell input text http://pubs.vmware.com/vfabric5/index.jsp?topic=/com.vmware.vfabric.tc-server.2.6/getting-started/tutwebapp-index-html-file.html")
if $phone==["s3mini"]
  performAction("touch_coordinate", 160, 596)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 166, 600)
end
  sleep(4.5)
end


Then(/^I try download st with incorrect url in that API$/) do
 performAction('wait_for_no_progress_bars')
  sleep(2.5)
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 281, 507)
end
  sleep(1.5)
  system("adb shell input text http://pe.hml")
if $phone==["s3mini"]
  performAction("touch_coordinate", 160, 596)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 166, 600)
end
  sleep(4.5)
end

Then(/^I open downloaded pdf in that API$/) do
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 382, 878)
end
end

Then(/^I choose Children API bridge calls$/) do
 performAction('wait_for_no_progress_bars')
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 264, 720)
end
 performAction('wait_for_no_progress_bars')
end




Then(/^I open URL in Children API bridge calls$/) do
 performAction('wait_for_no_progress_bars')
  sleep(2.5)
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 97, 647)
end
  sleep(1.5)
  system("adb shell input text http://google.com")
if $phone==["s3mini"]
  performAction("touch_coordinate", 160, 596)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 955, 644)
end
  sleep(4.5)
end

Then(/^I open jpg URL in Children API bridge calls$/) do
 performAction('wait_for_no_progress_bars')
  sleep(2.5)
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 97, 647)
end
  sleep(1.5)
  system("adb shell input text http://www.findingdulcinea.com/docroot/dulcinea/fd_images/news/on-this-day/September-October-08/On-this-Day--Athens-Defeats-Persian-Army-at-the-Battle-of-Marathon/news/0/image.jpg")
if $phone==["s3mini"]
  performAction("touch_coordinate", 160, 596)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 955, 644)
end
  sleep(4.5)
end



Then(/^I choose Barcode test$/) do
 performAction('wait_for_no_progress_bars')
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 264, 520)
end
 performAction('wait_for_no_progress_bars')
end

Then(/^I will scan something for 5 seconds$/) do
 performAction('wait_for_no_progress_bars')
 sleep(2.5)
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 124, 522)
end
  sleep(5)
  wait_for_elements_exist(["* id:'ok_button'"], :timeout => 5)
  touch "button id:'ok_button'"
end

Then(/^I choose application list API$/) do
 performAction('wait_for_no_progress_bars')
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 264, 450)
end
 performAction('wait_for_no_progress_bars')
end

Then(/^I enter app id with VPN$/) do
 performAction('wait_for_no_progress_bars')
  sleep(2.5)
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 65, 501)
end
  sleep(1.5)
  system("adb shell input text 10621")
if $phone==["s3mini"]
  performAction("touch_coordinate", 160, 596)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 646, 510)
end
 performAction('wait_for_no_progress_bars')
end

Then(/^I enter empty app id and invalid app id$/) do
 performAction('wait_for_no_progress_bars')
  sleep(2.5)
if $phone==["s3mini"]
  performAction("touch_coordinate", 160, 596)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 646, 510)
end
 performAction('wait_for_no_progress_bars')
  sleep(2.5)
if $phone==["s3mini"]
  performAction("touch_coordinate", 86, 144)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 65, 501)
end
  sleep(1.5)
  system("adb shell input text 11")
if $phone==["s3mini"]
  performAction("touch_coordinate", 160, 596)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 646, 510)
end
end

Then(/^I open and check info and then I close it$/) do
  wait_for_elements_exist(["* id:'info_button'"], :timeout => 15)
  touch "* id:'info_button'"
  wait_for_elements_exist(["* id:'app_info_value'"], :timeout => 15)
  wait_for_elements_exist(["* id:'app_info_name'"], :timeout => 15)
  performAction('wait_for_text', "API Endpoint", 12)
  performAction('wait_for_text', "LGE hammerhead", 12)
  performAction('wait_for_text', "Device", 12)
  performAction('wait_for_text', "API Endpoint", 12)
  performAction('wait_for_text', "4.4.2", 12)
  performAction('wait_for_text', "API 19", 12)
  performAction('wait_for_text', "OS Version", 12)
  performAction('wait_for_text', "Native", 12)
  performAction('wait_for_text', "WebView Type", 12)

if $phone==["s3mini"]
  performAction("touch_coordinate", 160, 596)
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 468, 1649)
end

end

Then(/^I open info$/) do
  wait_for_elements_exist(["* id:'info_button'"], :timeout => 15)
  touch "* id:'info_button'"
  wait_for_elements_exist(["* id:'app_info_value'"], :timeout => 15)
end


Then(/^I select child$/) do
 performAction('wait_for_no_progress_bars')
if $phone==["s3mini"]
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 735, 780)
end
 performAction('wait_for_no_progress_bars')
  performAction('wait_for_text', "10620Child", 12)
  performAction('click_on_text',"10620Child")
end

Then(/^I close child$/) do
 performAction('wait_for_no_progress_bars')
if $phone==["s3mini"]
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 130, 881)
end

end

Then(/^I close all child$/) do
 performAction('wait_for_no_progress_bars')
if $phone==["s3mini"]
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 154, 1023)
end

end




Then(/^I roll second favorites in multitab app$/) do 
  sleep(2)
if $phone==["s3mini"]
elsif $phone==["nexus5"]
  performAction("touch_coordinate", 875, 1013)
end
end

Then(/^I will get update$/) do 
cmd = 'sudo apt-get update'
system(cmd)
end







