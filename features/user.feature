@user
Feature: user

  @complete @solas_207 @core
  Scenario Outline: Create new user
    Given I am logged in as an admin user
    And I navigate to the add user page
    When I submit a new <user_type> user
    Then the user have been successfully created

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_207 @core
  Scenario: Edit user
    Given I am logged in as an admin user
    And I navigate to the add user page
    And I submit a new author user
    And the user have been successfully created
    When I select to edit the user
    And I edit the users details
    Then the users details are successfully edited
