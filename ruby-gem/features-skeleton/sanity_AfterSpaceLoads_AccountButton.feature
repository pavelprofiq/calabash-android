Feature: After Space loads - Account Button

@sanity @AfterSpaceLoads_AccountButton
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
Then I reset current PIN "2222" to "3333" and confirmation "3333"
Then I switch organization  
Then I press "a@a.cz"
Then I enter PIN require "3333"
Then I press Sign in
Then I delete organization 

@sanity @AfterSpaceLoads_AccountButton
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

@sanity @AfterSpaceLoads_AccountButton
Scenario: Read terms of service (content of terms is not tested) C15161
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I press Account button
Then I read terms of service
Then I navigate back from account to list of apps
Then I close organization list menu 
Then I delete organization 

@sanity @AfterSpaceLoads_AccountButton
Scenario: Read Attributions (content of Attributions is not tested) C15162
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I press Account button
Then I read attributions
Then I navigate back from account to list of apps
Then I close organization list menu 
Then I delete organization 

@sanity @AfterSpaceLoads_AccountButton
Scenario: Navigate back C15163
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I press Account button
Then I navigate back from account to list of apps
Then I close organization list menu 
Then I delete organization
