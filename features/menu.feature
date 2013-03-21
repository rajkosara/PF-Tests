@menu
Feature: Menu

  @complete @solas_925 @core
  Scenario: Add link to sub menu
    Given I am logged in as an admin user
    And I create a published landing page
    When I navigate to the add promo link page
    And I add a promo link to the manin menu
    And I navigate to the home page
    Then the menu link is displayed on the home page