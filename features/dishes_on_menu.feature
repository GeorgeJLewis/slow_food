Feature: User can see menu items on index page
  As a Visitor
  In order to make my choice
  I would like to see all available dishes on a menu

Background:
  Given We have the following categories:
    | name         |
    | Starters     |
    | Main Courses |
    | Desserts     |
  And We have the following dishes:
    | name           | description | price | category      |
    | Soup           | Pasta       | 100   | Main Courses  |

Scenario: Visitor should see dishes on menu
  Given I visit the site
  Then I should see a "Menu"
  And I should see dish name "Soup"
  And show me the page
  And I should see dish description "Pasta"
  And I should see "100"
