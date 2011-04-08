Feature: Update DVD
  In order to
  As a authenticated user
  I want to update DVD


  Background:
    Given I am an authenticated user

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
