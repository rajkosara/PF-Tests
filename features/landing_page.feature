@landing_page
Feature: Landing page

  @complete @solas_332 @core
  Scenario: Create an landing page
    Given I am logged in as an admin user
    When I navigate to the create landing page page
    And I submit a landing page
    Then the landing page is created

  @complete @solas_332 @core @solas_758
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

  @complete @solas_345 @core @failing
  Scenario: Editing a landing page body field as an manager
    Given I am logged in as an admin user
    And I create a published landing page
    And I log out and log back in as an manager user
    When I navigate to the created published landing page
    And I choose to the edit landing page
    And I edit the published landing page fields
    Then the landing page is displayed with the edited values

  @complete @solas_345 @core @failing
  Scenario: Editing a landing page body field as an producer
    Given I am logged in as an admin user
    And I create a published landing page
    And I log out and log back in as an producer user
    When I navigate to the created published landing page
    And I choose to the edit landing page
    And I edit the published landing page fields
    Then the landing page is displayed with the edited values

  @complete @solas_345 @core
  Scenario: Editing a landing page body field as aadmin
    Given I am logged in as an admin user
    And I create a published landing page
    And I log out and log back in as an admin user
    When I navigate to the created published landing page
    And I choose to the edit landing page
    And I edit the published landing page fields
    Then the landing page is displayed with the edited values

  @complete @solas_693 @core @smoke
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

  @complete @solas_403 @core
  Scenario: Add and order pages on a landing page
    Given I am logged in as an admin user
    And I create a published landing page
    And I create a general info page
    When I navigate to the created published landing page
    And I choose to the edit landing page
    And I enter the general info page and landing page as children
    And I save the landing page
    Then the general info page and landing page are displayed in the correct order

  @complete @solas_620 @core @translate
  Scenario: Translate main menu item appears in the menu
    Given I am logged in as an admin user
    And I create a published landing page
    And I choose to the translate a landing page
    When I click add translation on the translate page
    And I translate the landing page
    Then the translated menu link is displayed on the main menu

  @complete @solas_620 @core @translate
  Scenario: Translate main menu item doesnt appears in the menu wrong menu
    Given I am logged in as an admin user
    And I create a published landing page
    And I choose to the translate a landing page
    When I click add translation on the translate page
    And I translate the landing page
    And I navigate to the home page
    Then the translated menu link is not displayed on the main menu

  @complete @solas_403 @core
  Scenario: Add a page to a landing page
    Given I am logged in as an admin user
    And I create a published landing page
    When I navigate to the created published landing page
    And I choose to the edit landing page
    And I enter a child page into the child listing page management
    Then the page is displayed on the listing page

  @complete @solas_960 @core
  Scenario: Display summary image on landing page with general info
    Given I am logged in as an admin user
    And I create a image in the media library
    And I create a published landing page
    And I create a general info page with an image
    When I navigate to the created published landing page
    And I choose to the edit landing page
    And I enter the general info page and landing page as children
    And I save the landing page
    Then the general info page is displayed with an image on the landing page

  @complete @solas_383 @core
  Scenario: Add image promotion to a landing page
    Given I am logged in as an admin user
    And I create a image in the media library
    And I create a image promotion
    When I navigate to the create landing page page
    And I submit a landing page with a image promotion
    And the image promotion is displayed on the landing page

  @complete @solas_383 @core
  Scenario: Add two image promotions to a landing page
    Given I am logged in as an admin user
    And I create a image in the media library
    And I create a image promotion
    When I navigate to the create landing page page
    And I submit a landing page with two image promotion
    And the two image promotions are displayed on the landing page

  @complete @solas_1143 @core
  Scenario: Display summary image on landing page with courses
    Given I am logged in as an admin user
    And I create a image in the media library
    And I create a published landing page
    And I create a course page with an image
    When I navigate to the created published landing page
    And I choose to the edit landing page
    And I enter the course page and landing page as children
    And I save the landing page
    Then the course page is displayed with an image on the landing page

  @complete @solas_1143 @core
  Scenario: Display summary image on landing page with ielts
    Given I am logged in as an admin user
    And I create a image in the media library
    And I create a published landing page
    And I create a ielts page with an image
    When I navigate to the created published landing page
    And I choose to the edit landing page
    And I enter the ielts page and landing page as children
    And I save the landing page
    Then the ielts page is displayed with an image on the landing page

  @complete @solas_1143 @core
  Scenario: Display summary image on landing page with events
    Given I am logged in as an admin user
    And I create a image in the media library
    And I create a published landing page
    And I create a events page with an image
    When I navigate to the created published landing page
    And I choose to the edit landing page
    And I enter the events page and landing page as children
    And I save the landing page
    Then the events page is displayed with an image on the landing page

  @complete @solas_932 @core
  Scenario: Add Text promotion to a landing page on the sidebar
    Given I am logged in as an admin user
    And I create a text promotion
    When I navigate to the create landing page page
    And I submit a landing page with a text promotion
    And the text promotion is displayed on the landing page in the sidebar

  @complete @solas_932 @core
  Scenario: Add image promotion to a landing page on the sidebar
    Given I am logged in as an admin user
    And I create a image in the media library
    And I create a image promotion
    When I navigate to the create landing page page
    And I submit a landing page with a image promotion in the sidebar
    And the image promotion is displayed on the landing page in the sidebar

  @complete @solas_1161 @core
  Scenario: Add a event to a landing page
    Given I am logged in as an admin user
    And I create a published event page
    When I create a landing page and I enter the event page as children
    Then the event page is displayed on the listing page

  @complete @solas_1183 @core
  Scenario: Contact us block is displayed
    Given I am logged in as an admin user
    When I navigate to the create landing page page
    And I submit a landing page
    Then the landing page is created
    And the contact us block should be displayed on the landing page
