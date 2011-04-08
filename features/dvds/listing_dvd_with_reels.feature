Feature: Listing DVD with reels
  In order to
  As a authenticated user
  I want to see full tree of dvds and reels

  Background:
    Given I am an authenticated user
    And the following dvds exist:
      | id | name              | dvd    |
      | 1  | The Matrix        | Matrix |
      | 2  | Lord of the Rings | Lord   |
    And the following reels exist:
      | id | name       | dvd          |
      | 1  | New reel   | dvd "Matrix" |
      | 2  | New reel 2 | dvd "Matrix" |
      | 3  | New reel 3 | dvd "Lord"   |
      | 4  | New reel 4 | dvd "Lord"   |

  Scenario:
    When I am on the dvds page
    Then I should see "The Matrix" within "#dvd_1"
    And I should see "New reel" within "#dvd_1 #reel_1"
    And I should see "New reel 2" within "#dvd_1 #reel_2"
    And I should see "Lord of the Rings" within "#dvd_2"
    And I should see "New reel 3" within "#dvd_2 #reel_3"
    And I should see "New reel 4" within "#dvd_2 #reel_4"
