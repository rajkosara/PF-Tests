@job
Feature: Job

  @complete @solas_158 @core
  Scenario Outline: Create a job page
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

  @complete @solas_158 @core @failing
  Scenario Outline: Create a published job page
    Given I am logged in as an <user_type> user
    When I navigate to the create job page
    And I submit a published job page
    Then the job page is created

    Examples:
      | user_type |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_158 @core @failing
  Scenario: Create a published job page as admin
    Given I am logged in as an admin user
    When I navigate to the create job page
    And I submit a published job page
    Then the job page is created

  @complete @solas_158 @core @problematic
  Scenario: Error message displayed when job title field is not filled in
    Given I am logged in as an author user
    When I navigate to the create job page
    And I submit a job page without a job title
    Then a "Job title field is required" error message is displayed on the create job page

  @complete @solas_158 @core @problematic
  Scenario: Error message displayed when job aim field is not filled in
    Given I am logged in as an author user
    When I navigate to the create job page
    And I submit a job page without a job aim
    Then a "Job aim field is required" error message is displayed on the create job page

  @complete @solas_158 @core @problematic
  Scenario: Error message displayed when how to apply field is not filled in
    Given I am logged in as an author user
    When I navigate to the create job page
    And I submit a job page without a how to apply
    Then a "How to apply field is required" error message is displayed on the create job page

  @complete @solas_158 @core
  Scenario: Max length of job title is enforced
    Given I am logged in as a manager user
    And I navigate to the create job page
    When I enter a job title with 70 characters for the job page
    And I enter a job aim for the job page
    And I enter a how to apply for the job page
    Then a zero characters remaining error message is displayed on the create job page

  @complete @solas_158 @core
  Scenario: The created job appears in the correct section of the site
    Given I am logged in as an author user
    When I navigate to the create job page
    And I submit a job page
    Then the job appears in the job section of the site
