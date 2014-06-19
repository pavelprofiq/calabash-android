Feature: Tests medley


Those tests are test medley of tests from test rail from https://qa.sencha.com/index.php?/suites/view/516 - Creator: Pavel Juchelka



Scenario: Performance test - more than 20 apps and more than 10 users
And I login to Sace with org "workforce.profiq.cz" email "a@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "b@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "c@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "d@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I wait for 12222 seconds
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "e@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "f@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "g@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "h@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "i@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "j@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "k@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I wait for 1222 seconds


Scenario: Everything is long and incorect PIN authentication
And I enter "free-tier-organization-which-should-be-extreme-long-with-only-letters-pin-andblebleblelalablalalalala.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "longusernamelongusernamelongusername@longusernamelongusernamelongusername.uk" and password "dsgsgregweg3535&$%@\$^dfh$%^%$^dfgersdsdf"
Then I press Log in button
And I enter PIN "2222dssdfggerweg3535&$%@\$^dfh$%^%$^dfggferwg" and PIn confirmation "2222dssdfggerweg3535&$%@\$^dfh$%^%$^dfggferwg"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu 
Then I switch organization  
Then I press "longusernamelongusernamelongusername@longusernamelongusernamelongusername.uk"
Then I enter PIN require "3333"
Then I press Sign in
Then I wait up to 10 seconds to see "The PIN is incorrect.You have 1 attempts remaining."
Then I press "OK"
Then I enter PIN require "2222dssdfggerweg3535&$%@\$^dfh$%^%$^dfggferwg"
Then I press Sign in
Then I delete organization 


Scenario: Entering empty and invalid organization name and enter invalid email
When I press "Next"
Then I see "Organization name cannot be empty"
Then I press "OK"
Then I touch the "Organization name" text
Then I press "Back"
And I enter "non-existing.profiq.cz" as the Organization name
Then I press Next button
Then I wait up to 10 seconds to see "does not exist."
Then I press "OK"
And I enter "complicatedpinorg.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@awww.cz" and password "sasasasa2"
Then I press Log in button
Then I wait up to 10 seconds to see "Login or password is incorrect"
Then I press "OK"
Then I enter user's email "invalid**email" and password "sasasasa2"
Then I press Log in button
Then I wait up to 10 seconds to see "Login or password is incorrect"
Then I press "OK"
Then I enter user's email "user.who.get.complicated.pin@a.aa" and password "sasasasa2"
Then I press Log in button
And I enter PIN "Aab55##66ane" and PIn confirmation "Aab55##66ane"
Then I press Continue button
Then I wait, until load Space 
Then I delete organization 

Scenario: Use all back buttons until is PIN confirmed
And I enter "muhehe.profiq.cz" as the Organization name
Then I click on back button in entering org page
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I click on back button in entering email page
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press back button on the top
Then I press Log in button
Then I press back button on the top
Then I press back button on the top
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
Then I wait up to 10 seconds to see "Continue"
Then I wait for 2 seconds
Then I go back
Then I press Log in button
Then I wait up to 10 seconds to see "Continue"
Then I go back
Then I go back
Then I wait up to 10 seconds to see "Log In"
Then I go back
Then I go back
Then I press Next button
Then I wait up to 10 seconds to see "Log In"
Then I go back
Then I go back
And I enter "kekel.profiq.cz" as the Organization name
Then I press Next button
Then I navigate back in SAML page
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu
Then I switch organization
Then I add new organization
Then I click on back button in entering org page
Then I add new organization
Then I press back button on the top
Then I add new organization
Then I wait up to 10 seconds to see "Next"
Then I go back
Then I go back
Then I press "a@a.cz"
Then I enter PIN require "2222"
Then I press Sign in
Then I delete organization 


Scenario: Reset PIN - demo
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu  
Then I press Account button
Then I reset current PIN "2222" to "3333" and confirmation "3333"
Then I close organization list menu 
Then I delete organization 



Scenario: Refresh page
And I enter "vpnciscotesting.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "ciscoshouldworkonprettylongemail@a.cz" and password "stT21tobeW1"
Then I press Log in button
Then I wait, until load Space 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I cancel VPN auth form
Then I refresh page
Then I cancel VPN auth form
Then I delete organization 


Scenario: Shorter PIN than is required and PINs does not match
And I enter "complicatedpinorg.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "user.who.get.complicated.pin@a.aa" and password "sasasasa2"
Then I press Log in button
And I enter PIN "Aab55##66ane" and PIn confirmation "Aab55##66anp"
Then I press Continue button
Then I wait up to 10 seconds to see "Confirmation PIN does not match"
Then I press "OK"
And I enter PIN "Aab5#" and PIn confirmation "Aab5#"
Then I press Continue button
Then I wait up to 10 seconds to see "PIN must be at least 6 characters long"
Then I press "OK"
And I enter PIN "Aab55##66aneoineionewfcoiwebfuiwebfu$%^$%^#$%@#$%09789678" and PIn confirmation "Aab55##66aneoineionewfcoiwebfuiwebfu$%^$%^#$%@#$%09789678"
Then I press Continue button
Then I wait, until load Space 
Then I delete organization 

Scenario: Sending resetting password email on non existing email
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
And I enter "pavel.other@profiq.cz" as the email
Then I choose Forgot password
Then I reset password
Then I wait up to 10 seconds to see "The specified email does not exist."
Then I press "OK"
Then I choose navigate back button on the top
Then I press "Back"
Then I wait up to 10 seconds to see "New organization"



Scenario: Sending resetting password email (email is not opened)
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
And I enter "pavel.juchelka@profiq.cz" as the email
Then I choose Forgot password
Then I reset password
Then I wait up to 5 seconds to see "Please check your email."
Then I choose navigate back button on the top
Then I press "Back"
Then I wait up to 10 seconds to see "New organization"

Scenario: Wrong email password
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa2"
Then I press Log in button
Then I wait for "Login or password is incorrect" to appear
Then I press "OK"
Then I press Log in button
Then I wait for "Login or password is incorrect" to appear
Then I press "OK"
Then I press "Back"
Then I wait up to 10 seconds to see "New organization"

Scenario: Reset PIN
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I press Account button
Then I reset current PIN "2222" to "3333" and confirmation "3333"
Then I close organization list menu 
Then I delete organization 

Scenario: Read terms of services (content of terms is not tested)
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I press Account button
Then I read terms of service
Then I navigate back from account to list of apps
Then I close organization list menu 
Then I delete organization 

Scenario: Read Attributions (content of Attributions is not tested)
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I press Account button
Then I read attributions
Then I navigate back from account to list of apps
Then I close organization list menu 
Then I delete organization 


Scenario: Add and open favorite (+ long app name)
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu  
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app 
Then I open action toolbar button
Then I add favorite
Then I add favorite
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app
Then I open organization list menu 
Then I roll favorites
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On
Then I delete organization

Scenario: Switch organization
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu
Then I switch organization  
Then I press "a@a.cz"
Then I enter PIN require "2222"
Then I press Sign in
Then I delete organization 


Scenario: Login and delete org
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu   
Then I press Account button
Then I press delete organization
Then I press "Yes"
Then I wait until I see entering organization name page


Scenario: Open tab view and choose tab
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu  
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app
Then I wait until is page loaded
Then I open tab view 
Then I press "Act-on :: Login"
Then I try to find login element form from Act-On
Then I delete organization 


Scenario: login to cisco VPN (+long email)
And I enter "vpnciscotesting.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "ciscoshouldworkonprettylongemail@a.cz" and password "stT21tobeW1"
Then I press Log in button
Then I wait, until load Space 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I enter VPN login "space" and password "Spac3r"
Then I wait until page under VPN is loaded
Then I try to find login element form from Act-On
Then I delete organization 

Scenario: login to juniper VPN
And I enter "vpnjunipertesting.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "juniperuser@a.cz" and password "sesesesa2"
Then I press Log in button
Then I wait, until load Space 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I enter VPN login "user1" and password "l0st1n"
Then I wait until page under VPN is loaded
Then I try to find login element form from Act-On
Then I delete organization 


Scenario: Login on blocked/deauthorized user - only blocked device (Profiq devices only so far)
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "blockeduser@a.cz" and password "sasasasa1"
Then I press Log in button
Then I wait up to 10 seconds to see "This user has had their access revoked"
Then I press "OK"
Then I enter user's email "deauthorizeduser@a.cz" and password "sasasasa1"
Then I press Log in button
Then I wait up to 10 seconds to see "This device has been blocked"
Then I press "OK"
Then I enter user's email "userwithblockeddevice@a.cz" and password "sasasasa1"
Then I press Log in button
Then I wait up to 10 seconds to see "This device has been blocked"
Then I press "OK"
Then I click on back button in entering email page
And I enter "kekel.profiq.cz" as the Organization name
Then I press Next button
Then I login to SAML OneLogin on Nexus5 on user dalsi@se.cz
Then I wait up to 20 seconds to see "This user has had their access revoked indefinitely by an administrator."
Then I press "OK"


Scenario: Creating multiple accounts (no influence by favorites) - fail BROW-2645 - but I make it pass
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu   
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app 
Then I open action toolbar button
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app 
Then I open organization list menu 
Then I roll favorites
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On
Then I open organization list menu
Then I switch organization 
Then I add new organization
Then I touch the "Organization name" text
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@aa.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "3333" and PIn confirmation "3333"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu   
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app 
Then I open action toolbar button
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app 
Then I open organization list menu 
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On
Then I open organization list menu
Then I switch organization  
Then I press "a@a.cz"
Then I enter PIN require "2222"
Then I press Sign in
Then I open organization list menu
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On
Then I delete organization 
Then I press "a@aa.cz"
Then I enter PIN require "3333"
Then I press Sign in
Then I open organization list menu
Then I open organization list menu
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On
Then I delete organization 
Then I wait until I see entering organization name page


Scenario: Saving file
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu
Then I choose "savetest" app
Then I open action toolbar button
Then I wait for 5 seconds
Then I save file
Then I should see file was saved
Then I open organization list menu 
Then I choose "wef" app
Then I wait for 5 seconds
Then I delete organization 


Scenario: Navigate via link and history back/forward 
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait for progress
Then I touch on screen 200 from the left and 640 from the top
Then I open tab view 
Then I press "Google"
Then I navigate through history back
Then I open tab view 
Then I press "Aaron Haser's Tests"
Then I navigate through history forward
Then I open tab view 
Then I press "Google"
Then I delete organization 


Scenario: Wipe device and add again (checking by favorites) - wipe device message is not showed(not implemented in tests yet) - Failed BROW-2645 - but it pass
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app 
Then I press view with id "action_show_toolbar"
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app 
Then I open organization list menu 
Then I roll favorites
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On 
Then I open organization list menu
Then I choose "space manager" app
Then I enter into manager organization name "muhehe.profiq.cz" email "pavel.juchelka@profiq.cz" password "sasasasa1"
Then I press the enter button
Then I wait for 15 seconds
Then I touch on screen 150 from the left and 650 from the top
Then I wait for 10 seconds
Then I touch on screen 474 from the left and 638 from the top
Then I wait for 4 seconds
Then I touch on screen 794 from the left and 1700 from the top
Then I wait for 4 seconds
Then I touch on screen 420 from the left and 1130 from the top
Then I wait until I see create organization page
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu  
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app 
Then I press view with id "action_show_toolbar"
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app 
Then I open organization list menu 
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On
Then I open organization list menu
Then I press Account button
Then I press delete organization
Then I press "Yes"
Then I wait until I see create organization page



Scenario: Refresh page in new tab in VPN ????
And I login to Sace client with org "vpnjunipertesting.profiq.cz" email "user22@se.aa" password "sasasasa1"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I enter VPN login "user1" and password "l0st1n"
Then I wait until page under VPN is loaded
And I do a long press on a link - Nexus 5
Then I open in new tab
Then I refresh page
Then I delete organization 



Scenario: Login through SAML (+sliding in list of apps)
And I enter "kekel.profiq.cz" as the Organization name
Then I press Next button
Then I wait for 10 seconds
Then I touch on screen 240 from the left and 680 from the top
Then I press on keyboard "treti@se.cz" as SAML email
Then I touch on screen 240 from the left and 580 from the top
Then I press on keyboard "sasasasa1" as SAML password
Then I press the enter button
Then I wait, until load Space 
Then I wait for 7 seconds
Then I wait, until load Space 
Then I open organization list menu
Then I wait for 2 seconds
Then I slide down in list of apps
Then I choose "space manager" app
Then I delete organization 
Then I wait until I see entering organization name page


Scenario: Close new tab
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait until is page loaded
And I do a long press on a link - Nexus 5
Then I open in new tab
Then I open tab view 
Then I wait up to 10 seconds to see "Google"
Then I wait up to 10 seconds to see "Aaron Haser's Tests"
Then I close new tab
Then I check only one tab exist
Then I press "Aaron Haser's Tests"
Then I delete organization 


Scenario: Multitab
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait until is page loaded
And I do a long press on a link - Nexus 5
Then I open in new tab
Then I open tab view 
Then I press "Google"
Then I delete organization 

