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
      | admin     | general info |
      | author    | faq          |
      | manager   | event        |
      | producer  | landing page |

  @complete @solas_133 @core
  Scenario: Enter a custom url filename
    Given I am logged in as an author user
    When I navigate to the create general info page
    And I submit a general info page a custom url filename
    Then the title meta tag is displayed on the general info page
    And the filename displays the custom url filename on the general info page

  @solas_133 @core
  Scenario: Custom url is changed correctly when landing page file name is changed
    Given I am logged in as an admin user
    And I create a published landing page
    When I navigate to the created published landing page
    And I choose to the edit landing page
    And I enter a child page into the child listing page management
    Then the page is displayed on the listing page
