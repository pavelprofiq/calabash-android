Feature: Creating PIN page 




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

Scenario: Enter PIN which require numbers letters and special characters PIN C15154
And I enter "complicatedpinorg.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "user.who.get.complicated.pin@a.aa" and password "sasasasa2"
Then I press Log in button
And I enter PIN "Aab55##66aneoineionewfcoiwebfuiwebfu$%^$%^#$%@#$%09789678" and PIn confirmation "Aab55##66aneoineionewfcoiwebfuiwebfu$%^$%^#$%@#$%09789678"
Then I press Continue button
Then I wait, until load Space 
Then I delete organization 

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

Scenario: Navigate back C15245
And I enter "complicatedpinorg.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "user.who.get.complicated.pin@a.aa" and password "sasasasa2"
Then I press Log in button
And I enter PIN "Aab55##66ane" and PIn confirmation "Aab55##66anp"
Then I press back button on the top
Then I press back button on the top
