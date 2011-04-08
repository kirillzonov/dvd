Feature: Remove DVD
  In order to
  As a authenticated user
  I want remove DVD

  Background:
    Given I am an authenticated user

  Scenario: Remove DVD
    Given a dvd exists with name: "The Matrix"
    And I am on the dvds page
    When I follow "Delete DVD"
    Then a dvd should not exist with name: "The Matrix"
