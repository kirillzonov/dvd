Feature: Manage DVD
  In order to [goal]
  As a authenticated user
  A want to manage DVD

  Background:
    Given I am an authenticated user

  Scenario: Listing DVD
    Given a dvd exists with name: "Lord of the Rings"
    When I am on the dvds page
    Then I should see "Lord of the Rings"

  Scenario: Create new DVD with name
    When I am on the new dvd page
    And I fill in "Name" with "Lord of the Rings"
    And I press "Create DVD"
    Then a dvd should exist with name: "Lord of the Rings", user: I

  Scenario: Create new DVD without name
    When I am on the new dvd page
    And I fill in "Name" with ""
    And I press "Create DVD"
    Then a dvd should not exist with name: ""

  Scenario: Update DVD with name
    Given a dvd exists with name: "Lord of the Rings"
    And I am on the dvd's edit page
    And I fill in "Name" with "Lord of the Rings, II"
    And I press "Update DVD"
    Then a dvd should exist with name: "Lord of the Rings, II"

  Scenario: Update DVD without name
    Given a dvd exists with name: "Lord of the Rings"
    And I am on the dvd's edit page
    And I fill in "Name" with ""
    And I press "Update DVD"
    Then a dvd should exist with name: "Lord of the Rings"
