@ielts
Feature: IELTS

  @complete @solas_226 @core
  Scenario: Create a ielts page
    Given I am logged in as an admin user
    When I navigate to the create ielts page
    And I submit a ielts page
    Then the ielts page is created

  @complete @solas_226 @core
  Scenario Outline: Users cant create a ielts page
    Given I am logged in as an <user_type> user
    When I navigate to the create ielts page
    Then the not authorized to access this page error is displayed

    Examples:
      | user_type |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_226 @core
  Scenario: Error displayed when title missing
    Given I am logged in as an admin user
    When I navigate to the create ielts page
    And I submit a ielts page without a title
    Then a "Title field is required" error message is displayed on the create ielts page
