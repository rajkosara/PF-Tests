@job
Feature: Job

  @complete @solas_158 @core
  Scenario Outline: Create a general info page
    Given I am logged in as an <user_type> user
    When I navigate to the create job page
    And I submit a job page
    Then the job page is created

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |
