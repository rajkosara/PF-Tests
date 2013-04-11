@search
Feature: Search

  @complete @solas_177 @core
  Scenario: Search for General info
    Given I am logged in as an admin user
    And I create a general info page with an image
    When I index the content
    And I navigate to the home page
    And I search for the create general info page
    Then the created general info page is displayed in the search results
    
