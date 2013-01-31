@faq
Feature: Faq

  @complete @failing @solas_157 @core
  Scenario Outline: Create a faq page
    Given I am logged in as an <user_type> user
    When I navigate to the create faq page
    And I submit a faq page
    Then the faq page is created

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_157 @core
  Scenario: Error message displayed when question field not filled in
    Given I am logged in as an admin user
    When I navigate to the create faq page
    And I submit a faq page without a question
    Then a "Question field is required" error message is displayed on the create faq page

  @complete @solas_157 @core
  Scenario: Error message displayed when category field not filled in
    Given I am logged in as an admin user
    When I navigate to the create faq page
    And I submit a faq page without a category
    Then a "Category field is required" error message is displayed on the create faq page

  @complete @solas_157 @core
  Scenario: Error message displayed when answer field not filled in
    Given I am logged in as an admin user
    When I navigate to the create faq page
    And I submit a faq page without an answer
    Then a "Answer field is required" error message is displayed on the create faq page
