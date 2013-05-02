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

  @complete @solas_121 @core
  Scenario: Submit general info with internal link
    Given I am logged in as an admin user
    And I create a published course
    When I navigate to the create general info page
    And I submit a general info page with an internal link
    Then the internal link is displayed on the general info page

  @complete @solas_232 @core
  Scenario: Stop words are removed from filname
    Given I am logged in as an admin user
    When I navigate to the create general info page
    And I enter a title of "My Title should be a an as but is off on onto the" for the general info page
    And I save the general info page
    Then the filename of the general info page will not include the stop words

  @complete @solas_232 @core
  Scenario: Punctuation marks are removed from filname
    Given I am logged in as an admin user
    When I navigate to the create general info page
    And I enter a title containing some punctuation marks for a general info page
    And I enter a body for the general info page
    And I save the general info page
    Then the filename of the general info page will not include the punctuation marks

  @complete @solas_416 @core
  Scenario: Title and body are displayed on general info page on desktop
    Given I am logged in as an author user
    When I navigate to the create general info page
    And I submit a general info page
    Then the body is displayed on the general info page
    And the title is displayed on the general info page

  @complete @solas_416 @core @mobile
  Scenario: Title and body are displayed on general info page on mobile
    Given I am logged in as an author user
    When I navigate to the create general info page
    And I submit a general info page
    And I am using a mobile device
    Then the body is displayed on the general info page
    And the title is displayed on the general info page

  @complete @solas_715 @core @smoke
  Scenario: Add an image to a general info page
    Given I am logged in as an author user
    And I create a image in the media library
    When I navigate to the create general info page
    And I submit a general info page with an image
    Then the image is displayed on the general info page

  @complete @solas_773 @core
  Scenario: Add an document to a general info page
    Given I am logged in as an author user
    And I create a document in the media library
    When I navigate to the create general info page
    And I submit a general info page with an document
    Then the document is displayed on the general info page

  @complete @solas_251 @core
  Scenario: Search for a document on a general info page
    Given I am logged in as an author user
    And I create a document in the media library
    When I navigate to the create general info page
    And search for my created document on the general info page
    Then the created document is displayed on the general info page

  @complete @solas_249 @core
  Scenario: Remove a document from a general info page
    Given I am logged in as an author user
    And I create a document in the media library
    When I navigate to the create general info page
    And I submit a general info page with an document
    And I choose to edit the general info page
    And I remove the document from the general info page
    Then the document is not displayed on the general info page

  @complete @solas_666 @core
  Scenario: Create a general info page with a show hide
    Given I am logged in as an producer user
    When I navigate to the create general info page
    And I submit a general info page with a show hide
    Then the show hide is displayed on the general info page

  @complete @solas_666 @core @mobile
  Scenario: Create a general info page with show hide on mobile
    Given I am logged in as an producer user
    When I navigate to the create general info page
    And I submit a general info page with a show hide
    And I am using a mobile device
    Then the show hide is displayed on the general info page

  @complete @solas_660 @core
  Scenario: CTA with an external link is displayed correctly
    Given I am logged in as an admin user
    When I navigate to the create general info page
    And I submit a general info page with a cta with an external link
    Then the general info page is created
    And the CTA with an external link is displayed correctly on the general info page

  @complete @solas_660 @core @smoke
  Scenario: CTA with an internal link is displayed correctly
    Given I am logged in as an admin user
    And I create a published landing page
    When I navigate to the create general info page
    And I submit a general info page with a cta with an internal link
    Then the general info page is created
    And the CTA with an internal link is displayed correctly on the general info page

  @complete @solas_660 @core @mobile
  Scenario: CTA with an external link is displayed correctly on mobile
    Given I am logged in as an admin user
    When I navigate to the create general info page
    And I submit a general info page with a cta with an external link
    Then the general info page is created
    And I am using a mobile device
    And the CTA with an external link is displayed correctly on the general info page

  @complete @solas_1060 @core
  Scenario: Menu settings are displayed
    Given I am logged in as an admin user
    When I navigate to the create general info page
    Then the menu settings are displayed on the general info page
    And I can choose main menu and footer in the menu section on the creat general info page

  @complete @solas_1138 @core
  Scenario: Contact us block is displayed
    Given I am logged in as an author user
    When I navigate to the create general info page
    And I submit a general info page
    Then the general info page is created
    And the contact us block should be displayed on the general info page

  @complete @solas_1144 @core
  Scenario: Add an video to a general info page
    Given I am logged in as an author user
    And I create a video in the media library
    When I navigate to the create general info page
    And I submit a general info page with an video
    Then the video is displayed on the general info page