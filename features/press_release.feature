@press_release
Feature: Press release

  @complete @solas_1228 @core
  Scenario Outline: Create a press release
    Given I am logged in as an <user_type> user
    When I navigate to the create press release page
    And I submit a press release page
    Then the press release page is created

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_1228 @core
  Scenario: Create a press release without a title
    Given I am logged in as an author user
    When I navigate to the create press release page
    And I submit a press release page without a title
    Then a "Title field is required" error message is displayed on the create press release page

  @complete @solas_1228 @core
  Scenario: Create a press release with a document
    Given I am logged in as an author user
    And I create a document in the media library
    When I navigate to the create press release page
    And I submit a press release page with a document
    Then the document is displayed on the press release page

  @complete @solas_1228 @core
  Scenario: Create a press release and all required fields are displayed correctly
    Given I am logged in as an author user
    When I navigate to the create press release page
    And I submit a press release page
    Then the required fileds are displayed on the press release page

  @complete @solas_1228 @core
  Scenario: Create a press release with an internal link
    Given I am logged in as an admin user
    And I create a published course
    When I navigate to the create press release page
    And I submit a press release page with an internal link
    Then the internal link is displayed on the press release page

  @complete @solas_1228 @core
  Scenario: Create a press release with an external link
    Given I am logged in as an producer user
    When I navigate to the create press release page
    And I submit a press release page with an external link
    Then the external link is displayed on the press release page

  @complete @solas_1228 @core
  Scenario: Create a press release with a promo (should be able to do)
    Given I am logged in as an producer user
    And I create a text promotion
    When I navigate to the create press release page
    And I submit a press release page with an promo
    Then the promo is displayed on the press release page
