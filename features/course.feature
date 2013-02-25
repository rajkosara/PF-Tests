@course
Feature: Course

  @complete @solas_593 @core
  Scenario Outline: Create a general info page
    Given I am logged in as an <user_type> user
    When I navigate to the create course page
    And I submit a course page
    Then the course page is created

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |
