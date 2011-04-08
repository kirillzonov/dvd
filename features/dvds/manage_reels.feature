Feature: Manage reels
  In order to [goal]
  As a authenticated user
  A want manage reels

  Background:
    Given I am an authenticated user
    And a dvd: "Matrix" exists with name: "The Matrix", user: I
    And the following reels exist:
      | id | name       | dvd          |
      | 1  | New reel   | dvd "Matrix" |
      | 2  | New reel 2 | dvd "Matrix" |

  Scenario: Listing reels
    When I am on the dvds page
    And I follow "The Matrix"
    Then I should be on the dvd's reels page
    And I should see "New reel"
    And I should see "New reel 2"

  Scenario: Create new reel with name
    When I am on the dvd's new reel page
    And I fill in "Name" with "Reel"
    And I press "Create Reel"
    Then a reel should exist with name: "Reel", dvd: dvd "Matrix"

  Scenario: Create new reel without name
    When I am on the dvd's new reel page
    And I fill in "Name" with ""
    And I press "Create Reel"
    Then a reel should not exist with name: ""

  Scenario: Update reel with name
    Given I am on the dvd's reel's edit page
    And I fill in "Name" with "Updated reel"
    And I press "Update Reel"
    Then a reel should exist with name: "Updated reel"

  Scenario: Update reel without name
    Given I am on the dvd's reel's edit page
    And I fill in "Name" with ""
    And I press "Update Reel"
    Then a reel should not exist with name: "Updated reel"

