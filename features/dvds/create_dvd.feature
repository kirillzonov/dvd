Feature: Create new DVD
  In order to
  As a authenticated user
  I want create new DVD

  Background:
    Given I am an authenticated user

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
