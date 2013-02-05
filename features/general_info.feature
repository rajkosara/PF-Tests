@general_info
Feature: General info

  @complete @solas_121 @core
  Scenario Outline: Create a general info page
    Given I am logged in as an <user_type> user
    When I navigate to the create general info page
    And I submit a general info page
    Then the general info page is created

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |
