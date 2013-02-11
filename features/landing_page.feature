@landing_page
Feature: Landing page

  @complete @solas_332 @core
  Scenario: Create an landing page
    Given I am logged in as an admin user
    When I navigate to the create landing page page
    And I submit a landing page
    Then the landing page is created
