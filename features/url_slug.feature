@url_slug
Feature: URL slug

  @complete @solas_133 @core
  Scenario Outline: The generate automatic URL alias is checked by default and the filename field is disabled by default
    Given I am logged in as an <user_type> user
    When I navigate to the create <content_type> page
    And I open the url path settings on the create <content_type> page
    Then the generate automatic URL alias is checked by default on the create <content_type> page
    And the filename field is disabled by default on the create <content_type> page

    Examples:
      | user_type | content_type |
      | admin     | landing page |
      | producer  | general info |

  @complete @solas_133 @core
  Scenario: Enter a custom url filename
    Given I am logged in as an author user
    When I navigate to the create general info page
    And I submit a general info page with a custom url filename
    Then the title meta tag is displayed on the general info page
    And the filename displays the custom url filename on the general info page
