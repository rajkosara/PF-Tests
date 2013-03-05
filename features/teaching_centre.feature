@teaching_centre
Feature: teaching Centre

  @complete @solas_368 @core
  Scenario Outline: Create a teaching centre page
    Given I am logged in as an <user_type> user
    When I navigate to the create teaching centre page
    And I submit a teaching centre page
    Then the teaching centre page is created

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_368 @core
  Scenario: Error message displayed when title field is not filled in
    Given I am logged in as an author user
    When I navigate to the create teaching centre page
    And I submit a teaching centre page without a title
    Then a "Title field is required" error message is displayed on the create teaching centre page
