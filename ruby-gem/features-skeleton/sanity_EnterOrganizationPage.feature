Feature: Enter organization page 

@sanity @EnterOrganizationPage
Scenario: Enter empty organization C15144
When I press "Next"
Then I see "Organization name cannot be empty"
Then I press "OK"
Then I touch the "Organization name" text

@sanity @EnterOrganizationPage
Scenario: Enter invalid organization C15145
And I enter "non-existing.profiq.cz" as the Organization name
Then I press Next button
Then I wait up to 10 seconds to see "does not exist."
Then I press "OK"

@sanity @EnterOrganizationPage
Scenario: Enter valid organization C15146
And I enter "complicatedpinorg.profiq.cz" as the Organization name
Then I press Next button
Then I click on back button in entering email page
