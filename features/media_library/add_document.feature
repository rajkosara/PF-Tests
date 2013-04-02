@add_document
Feature: Add document to the media library

  @complete @solas_252 @core
  Scenario Outline: Add a document to media library
    Given I am logged in as an <user_type> user
    And I navigate to the add document page
    When I add an document to the media library
    Then the document is added to the media library

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_252 @core @failing
  Scenario Outline: Add different types of document
    Given I am logged in as an admin user
    And I navigate to the add document page
    When I add an <doc_type> document to the media library
    Then the document is added to the media library

    Examples:
      | doc_type |
      | pdf      |
      | doc      |
      | docx     |
      | xls      |

  @complete @solas_252 @core
  Scenario: Add invalid document type
    Given I am logged in as an author user
    And I navigate to the add document page
    When I add an gif document to the media library
    Then an document type error is displayed on the add document page

  @complete @solas_252 @core
  Scenario: Add invalid document size
    Given I am logged in as an author user
    And I navigate to the add document page
    When I add an invaild sized document to the media library
    Then an document size error is displayed on the add document page

  @complete @solas_252 @core @failing
  Scenario: Add document without a title
    Given I am logged in as an author user
    And I navigate to the add document page
    When I add an document to the media library without a tile
    Then a "Title field is required" error message is displayed on the add document page

  @complete @solas_250 @core
  Scenario: Add a document to media library and then tranlate it
    Given I am logged in as an manager user
    And I navigate to the add document page
    When I add an document to the media library
    And the document is added to the media library
    And I choose to translate the document
    Then the document is translated
