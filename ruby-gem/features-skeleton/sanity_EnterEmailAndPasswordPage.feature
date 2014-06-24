Feature: Enter email and password page

@sanity @EnterEmailAndPasswordPage
Scenario: Enter invalid email C15147
And I enter "complicatedpinorg.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@awww.cz" and password "sasasasa2"
Then I press Log in button
Then I wait up to 10 seconds to see "Login or password is incorrect"
Then I press "OK"
Then I click on back button in entering email page

@sanity @EnterEmailAndPasswordPage
Scenario: Enter valid email and password C15149
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press back button on the top
Then I press back button on the top

@sanity @EnterEmailAndPasswordPage
Scenario: Enter invalid password to an existing email C15150
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasq1"
Then I press Log in button
Then I wait up to 10 seconds to see "Login or password is incorrect"
Then I press "OK"
Then I press back button on the top

@sanity @EnterEmailAndPasswordPage
Scenario: Navigate back C15246
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I click on back button in entering email page
