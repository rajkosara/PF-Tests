@event
Feature: Event

  @complete @solas_144 @core
  Scenario Outline: Create an event page
    Given I am logged in as an <user_type> user
    When I navigate to the create event page
    And I submit a event page
    Then the event page is created

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_144 @core @failing
  Scenario Outline: Create a published  event page
    Given I am logged in as an <user_type> user
    When I navigate to the create event page
    And I submit a published event page
    Then the event page is created

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_144 @core
  Scenario: Error message displayed when title field is not filled in
    Given I am logged in as an author user
    When I navigate to the create event page
    And I submit a event page without a title
    Then a "Title field is required" error message is displayed on the create event page

  @complete @solas_144 @core
  Scenario: Error message displayed when description field is not filled in
    Given I am logged in as an author user
    When I navigate to the create event page
    And I submit a event page without a description
    Then a "Description field is required" error message is displayed on the create event page

  @complete @solas_144 @core
  Scenario: Error message displayed when city field is not filled in
    Given I am logged in as an author user
    When I navigate to the create event page
    And I submit a event page without a city
    Then a "City field is required" error message is displayed on the create event page

  @complete @solas_144 @core
  Scenario: Max length of title is enforced
    Given I am logged in as a producer user
    And I navigate to the create event page
    When I enter a title with 70 characters for the event page
    And I enter a description for the event page
    And I enter a city for the event page
    Then a zero characters remaining error message is displayed on the create event page
