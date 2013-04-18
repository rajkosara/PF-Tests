@search
Feature: Search

  @complete @solas_177 @core @problematic
  Scenario: Search for General info
    Given I am logged in as an admin user
    And I create a image in the media library
    And I create a general info page with an image
    When I index the content
    When I index the content
    And I navigate to the home page
    And I search for the create general info page
    Then the created general info page is displayed in the search results

  @complete @solas_177 @core @problematic
  Scenario: Search for something that hasnt been added
    Given I am logged in as an admin user
    When I navigate to the home page
    And I search for the pretend page
    Then the pretend page is not displayed in the search results

  @complte @solas_177 @core @problematic
  Scenario: Search for image and its not returned
    Given I am logged in as an admin user
    And I create a image in the media library
    When I index the content
    And I navigate to the home page
    And I search for the created image
    Then the image is not displayed in the search results
