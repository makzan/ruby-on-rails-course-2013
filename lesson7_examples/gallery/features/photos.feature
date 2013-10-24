Feature: Photo Upload
  Background:
    Given I have logged in

  Scenario: Uploading link
    Given I am on homepage
    When I click "Upload photo" link
    Then I should be on the photo upload page

  Scenario: Uploading photo
    Given I am on photo upload page
    When I upload a valid photo with title "Test"
    Then I should see "Success"
    And I should see "Test"

  Scenario: Uploading invalid photo
    Given I am on photo upload page
    When I upload an invalid photo with title "Test"
    Then I should see "Error"
    And I am in the upload form again
    And All data is there
