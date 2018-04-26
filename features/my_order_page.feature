Feature: User can see the order page
  As a visitor
  in order to see my selection
  I would like to have it displayed on a separate page

Scenario: Visitor should see the order on a separate page
  Given I am on the index page
  When I click the "button"
  Then I should be on "My Order" page
