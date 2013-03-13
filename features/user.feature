@user
Feature: user

  @complete @solas_207 @core
  Scenario Outline: Create new user
    Given I am logged in as an admin user
    And I navigate to the add user page
    When I submit a new <user_type> user
    Then the user has been successfully created

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
    And the user has been successfully created
    When I select to edit the user
    And I edit the users details
    Then the users details are successfully edited

  @complete @solas_207 @core
  Scenario Outline: User should not be able to view add userpage
    Given I am logged in as an <user_type> user
    When I navigate to the add user page
    Then the user can not view add user page

    Examples:
      | user_type |
      | author    |
      | manager   |
      | producer  |

  @compete @solas_206 @core
  Scenario: Find a user
    Given I am logged in as an admin user
    And I navigate to the add user page
    When I submit a new manager user
    And I navigate to the user list page
    Then the user and user role is displayed in the list

  @complete @solas_206 @core
  Scenario Outline: User should not be able to view userlist page
    Given I am logged in as an <user_type> user
    When I navigate to the user list page
    Then the user can not view user list page

    Examples:
      | user_type |
      | author    |
      | manager   |
      | producer  |


  @complete @solas_208 @core
  Scenario: Block a user
    Given I am logged in as an admin user
    And I navigate to the add user page
    And I submit a new author user
    And the user has been successfully created
    When I select to edit the user
    And I block the created user
    Then the users has been successfully blocked