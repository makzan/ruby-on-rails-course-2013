Feature: Authenticate
  Scenario: Before login
    Given I am not logged in
    When I go to homepage
    Then I should see "Sign in"
    And I should see "Sign up"

  Scenario: Login Page
    Given I am not logged in
    And I am on homepage
    When I click "Sign in" link
    Then I should be in the sign in page

  Scenario: Login action
    Given I have an account
    And I am not logged in
    And I am on sign in page
    When I fill in correct account information
    And press "Sign in" button
    Then I should see "Signed in successfully"

  Scenario: Logged in
    Given I have logged in
    When I go to homepage
    Then I should see "Sign out"

  Scenario: Logout action
    Given I have logged in
    And I am on homepage
    When I click "Sign out" link
    Then I should see "Sign in"
    And I should see "Signed out successfully"