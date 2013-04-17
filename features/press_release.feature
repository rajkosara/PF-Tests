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

  Scenario: Create a press release without a title

  Scenario: Create a press release with a document

  Scenario: Create a press release and all fields are displayed correctly

  Scenario: Create a press release with an internal link

  Scenario: Create a press release with an external link

  Scenario: Create a press release with a promo (should be able to do)

  Scenario: Create a press release in a menu (shouldt be able to do)

  Scenario: Create a press release and add to a landing page

  Scenario: Create a press release and tranlate
