@login
Feature: Login

  @complete @solas_204 @core @smoke @smoke_live
  Scenario Outline: User logs in successfully
    Given I navigate to the login page
    When I enter the <user_type> user username
    And I enter the <user_type> user password
    And I click on login
    Then the admin header is displayed at the top of the page
    And the admin header displays the <user_type> username

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_204 @core @smoke
  Scenario: User logs in unsuccessfully
    Given I navigate to the login page
    When I enter the invalid user username
    And I enter the invalid user password
    And I click on login
    Then the unrecognized username or password error message is displayed

  @complete @solas_204 @core @smoke @smoke_live
  Scenario: User logs in with invalid password unsuccessfully
    Given I navigate to the login page
    When I enter the admin user username
    And I enter the invalid user password
    And I click on login
    Then the unrecognized username or password error message is displayed

  @complete @solas_205 @core @smoke
  Scenario: User logs out
    Given I am logged in as an admin user
    When I log out
    Then the admin user is logged out