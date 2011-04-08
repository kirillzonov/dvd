Feature: Remove reel
  In order to
  As a authenticated user
  I want remove reel

  Background:
    Given I am an authenticated user
    And a dvd: "Matrix" exists with name: "The Matrix", user: I
    And the following reels exist:
      | id | name       | dvd          |
      | 1  | New reel   | dvd "Matrix" |
      | 2  | New reel 2 | dvd "Matrix" |
    And I am on the dvds page

  Scenario: Remove reel
    When I follow "Delete reel" within "#reel_1"
    Then a reel should not exist with name: "New reel"
