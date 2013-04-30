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
  Scenario Outline: Create a published event page
    Given I am logged in as an <user_type> user
    When I navigate to the create event page
    And I submit a published event page
    Then the event page is created

    Examples:
      | user_type |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_144 @core @smoke
  Scenario: Create a published event page as an admin
    Given I am logged in as an admin user
    When I navigate to the create event page
    And I submit a published event page
    Then the event page is created

  @complete @solas_144 @core @smoke_live
  Scenario: Error message displayed when title field is not filled in
    Given I am logged in as an author user
    When I navigate to the create event page
    And I submit a event page without a title
    Then a "Title field is required" error message is displayed on the create event page

  @complete @solas_144 @core
  Scenario: Max length of title is enforced
    Given I am logged in as a producer user
    And I navigate to the create event page
    When I enter a title with 70 characters for the event page
    And I enter a description for the event page
    Then a zero characters remaining error message is displayed on the create event page

  @complete @solas_144 @core
  Scenario: Image is displayed correctly
    Given I am logged in as an admin user
    And I create a image in the media library
    When I navigate to the create event page
    And I submit a event page with an image
    Then the event page is created
    And the image is displayed correctly on the event page

  @complete @solas_144 @core
  Scenario: CTA is displayed correctly
    Given I am logged in as an admin user
    When I navigate to the create event page
    And I submit a event page with a cta
    Then the event page is created
    And the cta is displayed correctly on the event page

  @complete @solas_144 @core
  Scenario: Event fields are displayed correctly
    Given I am logged in as an admin user
    When I navigate to the create event page
    And I submit a event page
    Then the event fields and displayed correctly

  @complete @solas_146 @core
  Scenario: Add partner to event
    Given I am logged in as an admin user
    And I create a partner
    When I navigate to the create event page
    And I submit a event page with a parner
    And the partner is displayed correctly on the event page

  @complete @solas_816 @japan @korea
  Scenario: Event fields are displayed correctly for yyyymmdd
    Given I am logged in as an admin user
    When I create a published event page
    When I choose to the translate an event page
    And I click add translation on the translate page
    And I translate the event page
    Then the event page is translated
    And the date format is yyyymmdd on the event page

  @complete @solas_816 @greece
  Scenario: Event fields are displayed correctly for ddmmyyyy
    Given I am logged in as an admin user
    When I create a published event page
    When I choose to the translate an event page
    And I click add translation on the translate page
    And I translate the event page
    Then the event page is translated
    And the date format is ddmmyyyy on the event page