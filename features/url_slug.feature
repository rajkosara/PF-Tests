@url_slug
Feature: URL slug

  @complete @solas_133 @core @wip
  Scenario Outline: The generate automatic URL alias is checked by default and the filename field is disabled by default
    Given I am logged in as an <user_type> user
    When I navigate to the create <content_type> page
    And I open the url path settings on the create <content_type> page
    Then the generate automatic URL alias is checked by default on the create <content_type> page
    And the filename field is disabled by default on the create <content_type> page

    Examples:
      | user_type | content_type |
      | admin     | landing page |
      | author    | faq          |
      | manager   | event        |
      | producer  | general info |

  @complete @solas_133 @core
  Scenario: Enter a custom url filename
    Given I am logged in as an author user
    When I navigate to the create general info page
    And I submit a general info page with a custom url filename
    Then the title meta tag is displayed on the general info page
    And the filename displays the custom url filename on the general info page

  @complete @solas_133 @core @failing
  Scenario: Add a course to a landing page and then change the landing page url
    Given I am logged in as an admin user
    And I create a published landing page
    When I create a course page and place it under the landing page
    And I edit the landing pages url filename
    And the filename displays the custom url filename on the landing page
    And I navigate to the created course page with the custom landing page url
    Then the course title is displayed on the course page
