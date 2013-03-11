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

  @complete @solas_252 @core
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
