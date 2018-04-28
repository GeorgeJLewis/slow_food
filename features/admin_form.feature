<<<<<<< HEAD
Feature: Owner can use admin site
As a owner
In order to set up information
I would like to access a protected part of application

Background:
  Given We have the following categories:
    | name         |
    | Starters     |
    | Main Courses |
    | Desserts     |
  And We have the following dishes:
    | name    | description | price | category      |
    | Soup    | Pasta       | 100   | Main Courses  |

Scenario: Owner can set up information on admin site
  Given I visit the admin site
  Then I should see orders
  And be able to modify them
=======
# Feature: Owner can use admin site
# As a owner
# In order to set up information
# I would like to access a protected part of application
#
# Background:
#   Given We have the following categories:
#     | name         |
#     | Starters     |
#     | Main Courses |
#     | Desserts     |
#   And We have the following dishes:
#     | name    | description | price | category      |
#     | Soup    | Pasta       | 100   | Main Courses  |
#
# Scenario: Owner can set up information on admin site
#   Given I visit the admin site
#   Then I should see orders
#   And be able to modify them
>>>>>>> bcf1a7053db4ec492b952b2d0f66482408f7bf4e
