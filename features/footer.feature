@footer
Feature: Footer

  @complete @solas_761 @core
  Scenario: Add Legal text
    Given I am logged in as an admin user
    And I navigate to the site information page
    When I enter some legal text on the site info page
    And I navigate to the home page
    Then the legal info is displayed on the home page footer
