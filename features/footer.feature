@footer
Feature: Footer

  @complete @solas_761 @core
  Scenario: Add Legal text
    Given I am logged in as an admin user
    And I navigate to the site information page
    When I enter some legal text on the site info page
    And I navigate to the home page
    Then the legal info is displayed on the home page footer

  @complete @solas_812 @core
  Scenario: I do social links stuff
    Given I am logged in as an admin user
    When I navigate to the add social media link page
    And I create a social media link
    And I choose for the social media link to be displayed on the footer
    And I navigate to the home page
    Then the social media link is displayed in the footer

  @complete @solas_761 @core
  Scenario: Add Legal text
    Given I am logged in as an admin user
    And I navigate to the site information page
    When I enter some legal text on the site info page
    And I navigate to the home page
    Then the legal info is displayed on the home page footer