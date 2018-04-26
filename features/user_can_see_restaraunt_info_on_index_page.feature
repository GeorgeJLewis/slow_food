Feature: User can see restaurant info on index page
  As a visitor
  In order to know who im dealing with
  I would like to see basic information about the restaraunt

Scenario: Visitor should
  Given I visit the site
  Then I should see 'GPA'
  And I should see 'Street address'
  And I should see '100 00 Stockholm'
