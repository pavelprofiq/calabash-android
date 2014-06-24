Feature: Resetting password page

@sanity @ResettingPasswordPage
Scenario: Sending resetting password email on existing email (email is not opened) C15151
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
And I enter "pavel.juchelka@profiq.cz" as the email
Then I choose Forgot password
Then I reset password
Then I wait up to 5 seconds to see "Please check your email."
Then I choose navigate back button on the top
Then I press "Back"
Then I wait up to 10 seconds to see "New organization"

@sanity @ResettingPasswordPage
Scenario: Try to reset password with email which does not exist in the org C15152
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
