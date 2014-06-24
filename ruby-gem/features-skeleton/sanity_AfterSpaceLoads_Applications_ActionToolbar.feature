Feature: Action toolbar in an application

@sanity @AfterSpaceLoads_Application_AcionToolbar
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

@sanity @AfterSpaceLoads_Application_AcionToolbar
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
Then I press "Act-on :: Login"
Then I try to find login element form from Act-On
Then I delete organization 

@sanity @AfterSpaceLoads_Application_AcionToolbar
Scenario: Navigate through tab view to another tab C15171
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
Then I press "Aaron Haser's Tests"
Then I delete organization 

@sanity @AfterSpaceLoads_Application_AcionToolbar
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

@sanity @AfterSpaceLoads_Application_AcionToolbar
Scenario: Navigate via link and history forward C15173
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

@sanity @AfterSpaceLoads_Application_AcionToolbar
Scenario: Navigate via link and history backward C15174
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
Then I delete organization
