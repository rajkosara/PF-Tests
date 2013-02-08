@login
Feature: Login

  @complete @solas_204 @core
  Scenario Outline: User logs in
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
