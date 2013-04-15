@webform
Feature: Contact us

  @complete @solas_1054 @core
  Scenario: Create a form
    Given I am logged in as an admin user
    When I navigate to the create webform page
    And I submit a webform
    Then the webform is created
