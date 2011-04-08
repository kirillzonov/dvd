Feature: Update reel
  In order to
  As a authenticated user
  I want update reel

  Background:
    Given I am an authenticated user
    And a dvd: "Matrix" exists with name: "The Matrix", user: I
    And the following reels exist:
      | id | name       | dvd          |
      | 1  | New reel   | dvd "Matrix" |
      | 2  | New reel 2 | dvd "Matrix" |

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
