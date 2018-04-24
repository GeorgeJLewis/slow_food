Feature: User can see restaurant information on index page
  As a Visitor
  In order to know I navigated to the right site
  I would like to see company information

Scenario: Visitor should see the information about restaurant
  Given I visit the site
  Then I should see 'GPA'
  And I should see 'Street address'
  And I should see '100 00 Stockholm'
