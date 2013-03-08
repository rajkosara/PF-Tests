@add_document
Feature: Add document to the media library

  @wip @solas_252 @core
  Scenario Outline: Add a document to media library
    Given I am logged in as an <user_type> user
    And I navigate to the add document page
    When I add an document to the media library
    Then the document is added to the media library

    Examples:
      | user_type |
      | admin     |
      #| author    |
      #| manager   |
      #| producer  |
