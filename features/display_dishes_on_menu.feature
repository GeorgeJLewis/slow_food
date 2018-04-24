Feature: User can see menu items on index page
  As a Visitor
  In order to make my choice
  I would like to see all available dishes on a menu

Background:
  Given We have a dish called "Lasagna" with description "Pasta" and price "100"

Scenario: Visitor should see all available dishes
  Given I visit the site
  Then I should see a "Menu"
  And I should see dish name "Lasagna"
  And I should see dish description "Pasta"
  And I should see "100"
