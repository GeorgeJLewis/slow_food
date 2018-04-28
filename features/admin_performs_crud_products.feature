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

  Scenario: Owner can edit product
    Given I am on product page
    When I click "Edit" button for "Snails"
    And I fill in "Name" with "Toast"
    And I fill in "Description" with "Bread"
    And I fill in "Price" with "25"
    And I select "Main Courses"
    And I click "Update Product"
    Then I should see "You have successfully updated product"

  Scenario: Owner can create product
    Given I am on product page
    When I click "Create"
    And I fill in "Name" with "Toast"
    And I fill in "Description" with "Bread"
    And I fill in "Price" with "25"
    And I select "Main Courses"
    And I click "Create Product"
    Then I should see "You have successfully created product"

  Scenario: Owner can delete product
    Given I am on product page
    When I click "Delete" button for "Snails"
    Then I should see "You have successfully deleted product"


