@event
Feature: Event

  @failing @solas_144 @core
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
