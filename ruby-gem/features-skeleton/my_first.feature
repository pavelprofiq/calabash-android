Feature: Login feature22


Scenario: Sending resetting password email
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


Scenario: Entering empty organization
When I press "Next"
Then I see "Organization name cannot be empty"
Then I press "OK"
Then I touch the "Organization name" text
Then I press "Back"


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
Then I wait for 2 seconds
Then I open organization list menu
Then I wait for 2 seconds
Then I slide down in list of apps
Then I choose "space manager" app
Then I delete organization 
Then I wait until I see entering organization name page

Scenario: Reset PIN
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I press Account button
Then I reset current PIN "2222" to "3333" and confirmation "3333"
Then I open organization list menu 
Then I delete organization 

Scenario: Read terms of services (content of terms is not tested)
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I press Account button
Then I read terms of service
Then I navigate back from account to list of apps
Then I open organization list menu 
Then I delete organization 

Scenario: Read Attributions (content of Attributions is not tested)
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I press Account button
Then I read attributions
Then I navigate back from account to list of apps
Then I open organization list menu 
Then I delete organization 

Scenario: Login through SAML (+sliding in list of apps)
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu  
Then I wait for 1 seconds
Then I choose "multitabs" app 
Then I wait for 10 seconds
And I do a long press on a link
Then I open in new tab
Then I wait for 10 seconds
Then I open action toolbar button
Then I open tab view 
Then I press "Google"
Then I wait for 10 seconds
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
Then I wait for 1 seconds
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app 
Then I open action toolbar button
Then I wait for 10 seconds
Then I add favorite
Then I add favorite
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app
Then I open organization list menu 
Then I roll favorites
Then I open favorite "Act-On :: Login"
Then I wait for 10 seconds
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
Then I wait for 3 seconds
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
Then I wait for 3 seconds
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app
Then I wait for 10 seconds 
Then I open action toolbar button
Then I open tab view 
Then I wait for 5 seconds
Then I press "Act-on :: Login"
Then I wait for 10 seconds
Then I try to find login element form from Act-On
Then I delete organization 


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



Scenario: login to cisco VPN (+long email)
And I enter "vpnciscotesting.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "ciscoshouldworkonprettylongemail@a.cz" and password "stT21tobeW1"
Then I press Log in button
Then I wait, until load Space 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I enter VPN login "space" and password "Spac3r"
Then I wait for 25 seconds
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
Then I wait for 25 seconds
Then I try to find login element form from Act-On
Then I delete organization 


Scenario: Wipe device and add again (checking by favorites) - wipe device message is not showed(not implemented in tests yet)
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I wait for 2 seconds
Then I open organization list menu  
Then I wait for 3 seconds
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app 
Then I wait for 2 seconds
Then I press view with id "action_show_toolbar"
Then I wait for 10 seconds
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app 
Then I open organization list menu 
Then I roll favorites
Then I wait for 10 seconds
Then I open favorite "Act-On :: Login"
Then I wait for 10 seconds
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I open organization list menu
Then I wait for 2 seconds
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
Then I wait for 3 seconds
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app 
Then I press view with id "action_show_toolbar"
Then I wait for 10 seconds
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app 
Then I open organization list menu 
Then I roll favorites
Then I wait for 10 seconds
Then I open favorite "Act-On :: Login"
Then I wait for 10 seconds
Then I try to find login element form from Act-On
Then I open organization list menu
Then I open organization list menu
Then I press Account button
Then I press delete organization
Then I press "Yes"
Then I wait until I see create organization page

Scenario: Creating multiple accounts (no influence by favorites) - fail BROW-2645
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu   
Then I wait for 3 seconds
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app 
Then I open action toolbar button
Then I wait for 10 seconds
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app 
Then I open organization list menu 
Then I roll favorites
Then I wait for 10 seconds
Then I open favorite "Act-On :: Login"
Then I wait for 10 seconds
Then I try to find login element form from Act-On
Then I wait for 1 seconds
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
Then I wait for 3 seconds
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app 
Then I open action toolbar button
Then I wait for 10 seconds
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app 
Then I open organization list menu 
Then I roll favorites
Then I wait for 10 seconds
Then I open favorite "Act-On :: Login"
Then I wait for 10 seconds
Then I try to find login element form from Act-On
Then I wait for 1 seconds
Then I open organization list menu
Then I switch organization  
Then I press "a@a.cz"
Then I enter PIN require "2222"
Then I press Sign in
Then I wait for 3 seconds
Then I open organization list menu 
Then I wait for 3 seconds
Then I choose "space manager" app 
Then I open organization list menu
Then I roll favorites
Then I wait for 4 seconds
Then I open favorite "Act-On :: Login"
Then I wait for 10 seconds
Then I try to find login element form from Act-On
Then I open organization list menu
Then I delete organization 
Then I wait for 5 seconds
Then I press "a@aa.cz"
Then I enter PIN require "3333"
Then I press Sign in
Then I wait for 3 seconds
Then I open organization list menu 
Then I open organization list menu 
Then I wait for 3 seconds
Then I choose "space manager" app 
Then I open organization list menu
Then I wait for 4 seconds
Then I roll favorites
Then I wait for 10 seconds
Then I open favorite "Act-On :: Login"
Then I wait for 10 seconds
Then I try to find login element form from Act-On
Then I delete organization 
Then I wait until I see entering organization name page




