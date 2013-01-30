@meta_tags
Feature: Meta tags

  @complete @solas_135 @core
  Scenario: Description meta tag is populated with the text from summary
    Given I navigate to the login page
    And I am logged in as a super user
    When I navigate to the create blog page
    And I submit a blog page
    Then the description meta tag is displayed on the blog page

  @complete @solas_233 @core
  Scenario: title meta tag is populated with the text from title
    Given I navigate to the login page
    And I am logged in as a super user
    When I navigate to the create blog page
    And I submit a blog page
    Then the title meta tag is displayed on the blog page