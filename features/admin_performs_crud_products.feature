Feature: Owner can manage his products
  As an admin
  In order to have the newest information on my products
  I would like to CRUD on products

Background:
  Given We have the following categories:
      | name         |
      | Starters     |
      | Main Courses |
      | Desserts     |
  And We have the following dishes:
      | name           | description | price | category      |
      | Snails         | Pasta       | 100   | Main Courses  |

Scenario: Owner can view products
  Given I am on product page
  Then I should see "Main Courses"
  And I should see "Snails"
