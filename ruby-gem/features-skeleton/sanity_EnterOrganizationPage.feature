Feature: Enter organization page - Failed on Samsung Galaxy S3 mini BROW-2664


Scenario: Enter empty organization C15144
When I press "Next"
Then I see "Organization name cannot be empty"
Then I press "OK"
Then I touch the "Organization name" text

Scenario: Enter invalid organization C15145
And I enter "non-existing.profiq.cz" as the Organization name
Then I press Next button
Then I wait up to 10 seconds to see "does not exist."
Then I press "OK"

Scenario: Enter valid organization C15146
And I enter "complicatedpinorg.profiq.cz" as the Organization name
Then I press Next button
Then I click on back button in entering email page
