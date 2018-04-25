Feature: User can see dishes categorised on menu
  As a Visitor
  In order to make my choice easier
  I would like to see all the dishes on the menu categorised

Background:
  Given We have categorise called "Starters" and "Main Courses" and "Desserts"

Scenario: Visitor should see all categorise on menu
  Given I visit the site
  Then I should see "Starters"
  And I should see "Main Courses"
  And I should see "Desserts"
