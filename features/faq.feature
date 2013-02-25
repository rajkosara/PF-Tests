@faq
Feature: Faq

  @complete @solas_157 @core
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

  @complete @failing @solas_157 @core
  Scenario Outline: Create a published faq page
    Given I am logged in as an <user_type> user
    When I navigate to the create faq page
    And I submit a published faq page
    Then the faq page is created

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_157 @core
  Scenario: Error message displayed when question field not filled in
    Given I am logged in as an author user
    When I navigate to the create faq page
    And I submit a faq page without a question
    Then a "Question field is required" error message is displayed on the create faq page

  @complete @solas_157 @core
  Scenario: Error message displayed when category field not filled in
    Given I am logged in as an author user
    When I navigate to the create faq page
    And I submit a faq page without a category
    Then a "Category field is required" error message is displayed on the create faq page

  @complete @solas_157 @core
  Scenario: Error message displayed when answer field not filled in
    Given I am logged in as an author user
    When I navigate to the create faq page
    And I submit a faq page without an answer
    Then a "Answer field is required" error message is displayed on the create faq page

  @complete @solas_157 @core
  Scenario: Max length of question is enforced
    Given I am logged in as an author user
    When I navigate to the create faq page
    And I enter an answer for the faq page
    And I enter a category for the faq page
    And I enter a question with 70 characters for the faq page
    Then a zero characters remaining error message is displayed on the create faq page

  @complete @solas_418 @core
  Scenario: Override link answer field
    Given I am logged in as an admin user
    And I navigate to the edit faq settings page
    When I edit the faq display label on the edit faq settings page
    And I save the edit faq settings page
    And I create a faq page
    Then the faq display label is displayed correctly
