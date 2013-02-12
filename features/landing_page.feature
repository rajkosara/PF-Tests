@landing_page
Feature: Landing page

  @complete @solas_332 @core
  Scenario: Create an landing page
    Given I am logged in as an admin user
    When I navigate to the create landing page page
    And I submit a landing page
    Then the landing page is created

  @complete @solas_332 @core
  Scenario Outline: Create an landing page with author
    Given I am logged in as an <user_type> user
    When I navigate to the create landing page page
    Then the not authorized to access this page error is displayed

    Examples:
      | user_type |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_332 @core
  Scenario: Error message displayed when title field is not filled in
    Given I am logged in as an admin user
    When I navigate to the create landing page page
    And I submit a landing page without a title
    Then a "Title field is required" error message is displayed on the create landing page page

  @complete @solas_332 @core
  Scenario: Max length of title is enforced
    Given I am logged in as a admin user
    And I navigate to the create landing page page
    When I enter a title with 70 characters for the landing page
    Then a zero characters remaining error message is displayed on the create landing page

  @failing @solas_570 @solas_322 @core
  Scenario: Adding a landing page to a menu
    Given I am logged in as an admin user
    And I create a published landing page
    When I navigate to the create landing page page
    Then the created landing pages menu is displayed in the menu list