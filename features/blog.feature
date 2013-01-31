@blog
Feature: Blog

  @complete @solas_232 @core
  Scenario: Stop words are removed from filname
    Given I navigate to the login page
    And I am logged in as a admin user
    When I navigate to the create blog page
    And I enter a title of "My Title should be a an as but is off on onto the" for the blog page
    And I save the blog page
    Then the filename of the blog post will not include the stop words

  @complete @solas_232 @core
  Scenario: Punctuation marks are removed from filname
    Given I navigate to the login page
    And I am logged in as a admin user
    When I navigate to the create blog page
    And I enter a title containing some punctuation marks
    And I save the blog page
    Then the filename of the blog post will not include the punctuation marks
