Feature: User can see dishes categorised on menu
  As a Visitor
  In order to make my choice easier
  I would like to see all the dishes on the menu categorised

  Background:
    Given We have the following categories:
      | name         |
      | Starters     |
      | Main Courses |
      | Desserts     |
    And We have the following dishes:
      | name           | description | price | category      |
      | Soup           | Pasta       | 100   | Main Courses  |

Scenario: Visitor should see all categorise on menu
  Given I visit the site
  Then I should see "Starters"
  And I should see "Main Courses"
  And I should see "Desserts"
