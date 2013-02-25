@course
Feature: Course

  @solas_593 @core
  Scenario: Create a general info page
    Given I am logged in as an admin user
    When I navigate to the create course page
    And I submit a course page
    Then the course page is created