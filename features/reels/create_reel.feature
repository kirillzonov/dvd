Feature: Create new reel for existing DVD
  In order to
  As a authenticated user
  I want create new reel

  Background:
    Given I am an authenticated user
    And a dvd: "Matrix" exists with name: "The Matrix", user: I

  Scenario: Create new reel with name
    When I am on the dvd's new reel page
    And I fill in "Name" with "Reel"
    And I press "Create Reel"
    Then a reel should exist with name: "Reel", dvd: dvd "Matrix"

#  Scenario: Create new reel without name
#    When I am on the dvd's new reel page
#    And I fill in "Name" with ""
#    And I press "Create Reel"
#    Then a reel should not exist with name: ""

