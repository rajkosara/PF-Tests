@contact_us
Feature: Contact us

  @complete @solas_928 @core
  Scenario: Create a contact us page
    Given I am logged in as an admin user
    And I create a published teaching centre page
    When I navigate to the create contact us page
    And I submit a contact us page
    Then the contact us page is created
    And the all the fields are displayed correctly on the contact us page