Feature: Sanity tests

Sanity tests are designet atomic as possible according https://qa.sencha.com/index.php?/suites/view/523 and are separated
according test sections. Every test ID should be here as well as on TestRail. 
Tests are designed for Nexus 5 (implicit device) and for Samsung S3 mini.
They are also designed for my organizations, executing tests on different orgs need set orgs as prerequisites.



@sanity @EnterOrganizationPage @s3mini @nexus5
Scenario: Enter empty organization C15144
When I press "Next"
Then I see "Organization name cannot be empty"
Then I press "OK"
Then I touch the "Organization name" text

@sanity @EnterOrganizationPage @s3mini @nexus5
Scenario: Enter invalid organization C15145
And I enter "non-existing.profiq.cz" as the Organization name
Then I press Next button
Then I wait up to 10 seconds to see "does not exist."
Then I press "OK"

@sanity @EnterOrganizationPage @s3mini @nexus5
Scenario: Enter valid organization C15146
And I enter "complicatedpinorg.profiq.cz" as the Organization name
Then I press Next button
Then I click on back button in entering email page

@sanity @ResettingPasswordPage @s3mini @nexus5
Scenario: Sending resetting password email on existing email (email is not opened) C15151
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "pavel.juchelka@profiq.cz" and password "a"
Then I choose Forgot password
Then I reset password
Then I wait up to 5 seconds to see "Please check your email."
Then I choose navigate back button on the top
Then I press "Back"
Then I wait up to 10 seconds to see "New organization"

@sanity @ResettingPasswordPage @s3mini @nexus5
Scenario: Try to reset password with email which does not exist in the org C15152
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "pavel.other@profiq.cz" and password "a"
Then I choose Forgot password
Then I reset password
Then I wait up to 10 seconds to see "The specified email does not exist."
Then I press "OK"
Then I choose navigate back button on the top
Then I press "Back"
Then I wait up to 10 seconds to see "New organization"

@sanity @CreatingPINPage @s3mini @nexus5
Scenario: Navigate back C15245
And I enter "complicatedpinorg.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "user.who.get.complicated.pin@a.aa" and password "sasasasa2"
Then I press Log in button
And I enter PIN "Aab55##66ane" and PIn confirmation "Aab55##66anp"
Then I press back button on the top
Then I press back button on the top

@sanity @EnterEmailAndPasswordPage @s3mini @nexus5
Scenario: Enter invalid email C15147
And I enter "complicatedpinorg.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@awww.cz" and password "sasasasa2"
Then I press Log in button
Then I wait up to 10 seconds to see "Login or password is incorrect"
Then I press "OK"
Then I click on back button in entering email page

@sanity @EnterEmailAndPasswordPage @s3mini @nexus5
Scenario: Enter valid email and password C15149
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press back button on the top
Then I press back button on the top

@sanity @EnterEmailAndPasswordPage @s3mini @nexus5
Scenario: Enter invalid password to an existing email C15150
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasq1"
Then I press Log in button
Then I wait up to 10 seconds to see "Login or password is incorrect"
Then I press "OK"
Then I press back button on the top

@sanity @EnterEmailAndPasswordPage @s3mini @nexus5
Scenario: Navigate back C15246
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I click on back button in entering email page

@sanity @AfterSpaceLoads @s3mini @nexus5
Scenario: Open organization list menu and choose an app C15157
And I login to Sace with org "manyapps.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "2" app and wait until loads
Then I delete organization

@sanity @AfterSpaceLoads @s3mini @nexus5
Scenario: Open organization list menu and slide down with list of apps and choose app C15158
And I login to Sace with org "manyapps.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "16" app and wait until loads
Then I delete organization

@sanity @CreatingPINPage @s3mini @nexus5
Scenario: Enter numeric PIN C15153
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

@sanity @CreatingPINPage @s3mini @nexus5
Scenario: Enter PIN which require numbers letters and special characters PIN C15154
And I enter "complicatedpinorg.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "user.who.get.complicated.pin@a.aa" and password "sasasasa2"
Then I press Log in button
And I enter PIN "Aab55##66aneoineionewfcoiwebfuiwebfu$%^$%^#$%@#$%09789678" and PIn confirmation "Aab55##66aneoineionewfcoiwebfuiwebfu$%^$%^#$%@#$%09789678"
Then I press Continue button
Then I wait, until load Space 
Then I delete organization 

@sanity @CreatingPINPage @s3mini @nexus5
Scenario: Enter shorter PIN C15155
And I enter "complicatedpinorg.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "user.who.get.complicated.pin@a.aa" and password "sasasasa2"
Then I press Log in button
And I enter PIN "Aab5#" and PIn confirmation "Aab5#"
Then I press Continue button
Then I wait up to 10 seconds to see "PIN must be at least 6 characters long"
Then I press "OK"
Then I press back button on the top
Then I press back button on the top

@sanity @CreatingPINPage @s3mini @nexus5
Scenario: Enter PINs which does not match C15156
And I enter "complicatedpinorg.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "user.who.get.complicated.pin@a.aa" and password "sasasasa2"
Then I press Log in button
And I enter PIN "Aab55##66ane" and PIn confirmation "Aab55##66anp"
Then I press Continue button
Then I wait up to 10 seconds to see "Confirmation PIN does not match"
Then I press "OK"
Then I press back button on the top
Then I press back button on the top

@sanity @AfterSpaceLoads @s3mini @nexus5
Scenario: Open organization list menu and Switch organizations C15164
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

@sanity @AfterSpaceLoads_AccountButton @nexus5 @s3mini
Scenario: Reset PIN C15159
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu  
Then I press Account button
Then I click on reset PIN button
Then I reset current PIN "2222" to "3333" and confirmation "3333"
Then I switch organization  
Then I press "a@a.cz"
Then I enter PIN require "3333"
Then I press Sign in
Then I delete organization 

@sanity @AfterSpaceLoads_AccountButton @nexus5 @s3mini
Scenario: Delete org C15160
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

@sanity @AfterSpaceLoads_AccountButton @nexus5 @s3mini
Scenario: Read terms of service (content of terms is not tested) C15161
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I press Account button
Then I read terms of service
Then I navigate back from account to list of apps
Then I close organization list menu 
Then I delete organization 

@sanity @AfterSpaceLoads_AccountButton @nexus5 @s3mini
Scenario: Read Attributions (content of Attributions is not tested) C15162
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I press Account button
Then I read attributions
Then I navigate back from account to list of apps
Then I close organization list menu 
Then I delete organization 

@sanity @AfterSpaceLoads_AccountButton @nexus5 @s3mini
Scenario: Navigate back C15163
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I press Account button
Then I navigate back from account to list of apps
Then I close organization list menu 
Then I delete organization

@sanity @AfterSpaceLoads_Applications @nexus5 @s3mini
Scenario: Navigate through link C15166 
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait for progress
Then I press on a link
Then I open tab view 
Then I press "Google" in tab name
Then I delete organization
 
@sanity @AfterSpaceLoads_Applications @nexus5 @s3mini
Scenario: Open new tab C15166
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait until is page loaded
Then I do a long press on a link
Then I wait until is page loaded
Then I open in new tab
Then I open tab view 
Then I wait up to 10 seconds to see "Google"
Then I wait up to 10 seconds to see "Aaron Haser's Tests"
Then I delete organization from tab view

@sanity @AfterSpaceLoads_Applications @nexus5 @s3mini
Scenario: Download a file C15167
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

@sanity @AfterSpaceLoads_Applications @nexus5 @s3mini
Scenario: Open and hide action toolbar C15168
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space  
Then I open action toolbar button
Then I close action toolbar button
Then I delete organization

@sanity @AfterSpaceLoads_Application_AcionToolbar @nexus5 @s3mini
Scenario: Add favorite C15169
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
Then I delete organization

@sanity @AfterSpaceLoads_Application_AcionToolbar @nexus5 @s3mini
Scenario: Open tab view C15170
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
Then I press "Act-On :: Login" in tab name
Then I try to find login element form from Act-On
Then I delete organization 

@sanity @AfterSpaceLoads_Application_AcionToolbar @nexus5 @s3mini
Scenario: Navigate through tab view to another tab C15171
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait until is page loaded
And I do a long press on a link
Then I open in new tab
Then I open tab view 
Then I wait up to 10 seconds to see "Google"
Then I wait up to 10 seconds to see "Aaron Haser's Tests"
Then I close new tab
Then I maximize the tab
Then I delete organization

@sanity @AfterSpaceLoads_Application_AcionToolbar @nexus5 @s3mini
Scenario: Refresh page C15172
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

@sanity @AfterSpaceLoads_Application_AcionToolbar @s3mini @nexus5
Scenario: Navigate via link and history forward C15173
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait for progress
Then I press on a link
Then I open tab view 
Then I press "Google" in tab name
Then I navigate through history back
Then I open tab view 
Then I wait up to 10 seconds to see "Aaron Haser's Tests"
Then I maximize the tab
Then I navigate through history forward
Then I open tab view 
Then I press "Google" in tab name
Then I delete organization 

@sanity @AfterSpaceLoads_Application_AcionToolbar @s3mini @nexus5
Scenario: Navigate via link and history backward C15174
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait for progress
Then I press on a link
Then I open tab view 
Then I press "Google" in tab name
Then I navigate through history back
Then I open tab view 
Then I wait up to 10 seconds to see "Aaron Haser's Tests"
Then I maximize the tab
Then I delete organization
