@login
Feature: Login

  @complete
  Scenario: User logs in as a super user
    Given I navigate to the login page
    When I enter he super user username
    And I enter the super user password
    And I click on login
    Then the admin header is displayed at the top of the page
    And the admin page should be displayed