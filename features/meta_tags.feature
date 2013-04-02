@meta_tags
Feature: Meta tags

  @complete @solas_135 @core
  Scenario: Description meta tag is populated with the text from summary
    Given I navigate to the login page
    And I am logged in as a admin user
    When I navigate to the create general info page
    And I submit a general info page
    Then the description meta tag is displayed on the general info page

  @complete @solas_233 @core
  Scenario: title meta tag is populated with the text from title
    Given I navigate to the login page
    And I am logged in as a admin user
    When I navigate to the create general info page
    And I submit a general info page
    Then the title meta tag is displayed on the general info page

  @complete @solas_1059 @core
  Scenario Outline: Meta tags menu is displayed for all users
    Given I am logged in as an <user_type> user
    When I navigate to the create general info page
    Then the meta tags menu is displayed on the general info page

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |
