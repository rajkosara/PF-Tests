@teaching_centre
Feature: teaching Centre

  @complete @solas_368 @core
  Scenario Outline: Create a teaching centre page
    Given I am logged in as an <user_type> user
    When I navigate to the create teaching centre page
    And I submit a teaching centre page
    Then the teaching centre page is created

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_368 @core
  Scenario: Error message displayed when title field is not filled in
    Given I am logged in as an author user
    When I navigate to the create teaching centre page
    And I submit a teaching centre page without a title
    Then a "Title field is required" error message is displayed on the create teaching centre page

  @complete @solas_368 @core
  Scenario: Create a teaching centre page and the page is displayed correctly
    Given I am logged in as an producer user
    When I navigate to the create teaching centre page
    And I submit a teaching centre page
    Then the teaching centre page is created
    And the teaching centre page details are displayed correctly

  @complete @solas_368 @core @mobile
  Scenario: Create a teaching centre page and the page is displayed correctly on mobile
    Given I am logged in as an producer user
    When I navigate to the create teaching centre page
    And I submit a teaching centre page
    And I am using a mobile device
    Then the teaching centre page is created
    And the teaching centre page details are displayed correctly on mobile

  @complete @solas_368 @core @translate
  Scenario: Translate teaching centre
    Given I am logged in as an admin user
    And  I create a teaching centre page
    When I choose to the translate a teaching centre page
    When I click add translation on the translate page
    And I translate the teaching centre page
    Then the translated teaching centre page is displayed

  @complete @solas_368 @core
  Scenario: Edit teaching centre
    Given I am logged in as an admin user
    And  I create a teaching centre page
    When I choose to the edit a teaching centre page
    And I edit the teaching centre page
    Then the edited teaching centre page is displayed