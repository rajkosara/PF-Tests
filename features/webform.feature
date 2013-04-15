@webform
Feature: Contact us

  @complete @solas_1054 @core
  Scenario: Create a form
    Given I am logged in as an admin user
    When I navigate to the create webform page
    And I submit a webform
    Then the webform is created

  @complete @solas_1054 @core @wip
  Scenario: Create a form and add text component to it
    Given I am logged in as an admin user
    When I navigate to the create webform page
    And I submit a webform
    And the webform is created
    And I add a text component to the webform
    And I view the created webform
    Then the fields on the webform are displayed correctly