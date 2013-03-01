@landing_page
Feature: Landing page

  @complete @solas_332 @core
  Scenario: Create an landing page
    Given I am logged in as an admin user
    When I navigate to the create landing page page
    And I submit a landing page
    Then the landing page is created

  @complete @solas_332 @core @failing @solas_758
  Scenario Outline: Create an landing page with non admin
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

  @complete @solas_322 @core
  Scenario: Adding a landing page to a menu
    Given I am logged in as an admin user
    And I create a published landing page
    When I navigate to the create landing page page
    Then the created landing pages menu is displayed in the menu list

  @complete @solas_345 @core
  Scenario Outline: Editing a landing page body field
    Given I am logged in as an author user
    And I create a published landing page
    And I log out and log back in as an <user_type> user
    When I navigate to the created published landing page
    And I choose to the edit landing page
    And I edit the published landing page fields
    Then the landing page is displayed with the edited values

    Examples:
      | user_type |
      | manager   |
      | producer  |
      | admin     |

  @complete @solas_345 @core
  Scenario: Editing a landing page body field for an author
    Given I am logged in as an author user
    And I create a published landing page
    And I log out and log back in as an author user
    When I navigate to the created published landing page
    Then the edit button is not displayed

  @complete @solas_403 @core
  Scenario: Add a page to a landing page
    Given I am logged in as an admin user
    And I create a published landing page
    When I navigate to the created published landing page
    And I choose to the edit landing page
    And I enter a child page into the child listing page management
    Then the page is displayed on the listing page

  @complete @solas_403 @core @failing
  Scenario: Add and order pages on a landing page
    Given I am logged in as an admin user
    And I create a published landing page
    And I create a general info page
    When I navigate to the created published landing page
    And I choose to the edit landing page
    And I enter the general info page and landing page as children
    And I save the landing page
    Then the general info page and landing page are displayed in the correct order

  @complete @solas_693 @core
  Scenario: Create landing page with two columns
    Given I am logged in as an admin user
    And I create a published landing page
    And I create a general info page
    When I navigate to the created published landing page
    And I choose to the edit landing page
    And I enter the general info page and landing page as children
    And I select to display the landing page with a two column layout without images
    And I save the landing page
    Then two columns are displayed on the landing page

  @complete @solas_620 @core
  Scenario: Translate main menu item appears in the menu
    Given I am logged in as an admin user
    And I create a published landing page
    And I choose to the translate a landing page
    When I click add translation on the translate page
    And I translate the landing page
    Then the translated menu link is displayed on the main menu

  @complete @solas_620 @core
  Scenario: Translate main menu item doesnt appears in the menu wrong menu
    Given I am logged in as an admin user
    And I create a published landing page
    And I choose to the translate a landing page
    When I click add translation on the translate page
    And I translate the landing page
    And I navigate to the home page
    Then the translated menu link is not displayed on the main menu