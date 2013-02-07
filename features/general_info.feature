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

  @complete @solas_121 @core
  Scenario: Error message displayed when title field is not filled in
    Given I am logged in as an author user
    When I navigate to the create general info page
    And I submit a general info page without a title
    Then a "Title field is required" error message is displayed on the create general info page

  @complete @solas_121 @core
  Scenario: Error message displayed when body field is not filled in
    Given I am logged in as an author user
    When I navigate to the create general info page
    And I submit a general info page without a body
    Then a "Body field is required" error message is displayed on the create general info page

  @complete @solas_121 @core
  Scenario: Error message displayed when body field is not filled in
    Given I am logged in as an author user
    When I navigate to the create general info page
    And I submit a general info page without a body
    Then a "Body field is required" error message is displayed on the create general info page

  @complete @solas_121 @core
  Scenario: Max length of title is enforced
    Given I am logged in as an author user
    When I navigate to the create general info page
    And I enter a body for the general info page
    And I enter a title with 70 characters for the general info page
    Then a zero characters remaining error message is displayed on the create general info page

  @complete @solas_121 @core
  Scenario: Submit general info with external link
    Given I am logged in as an author user
    When I navigate to the create general info page
    And I submit a general info page with an external link
    Then the external link is displayed on the general info page

  @failing @solas_121 @core
  Scenario: Submit general info with internal link
    Given I am logged in as an author user
    And I create a general info page
    When I navigate to the create general info page
    And I submit a general info page with an internal link
    Then the internal link is displayed on the general info page