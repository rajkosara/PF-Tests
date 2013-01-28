Feature: Meta tags

  @complete @wip
  Scenario: Description meta tag is populated with the text from summary
    Given I navigate to the login page
    And I am logged in as a super user
    When I navigate to the create blog page
    And I submit a blog page
    Then the description meta tag is displayed on the blog page
