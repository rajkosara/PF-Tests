@press_release
Feature: Press Release

  @complete
  Scenario: Navigate to Create Press release
    Given I navigate to the login page
    And I am logged in as a super user
    When I navigate to the create press release page
    Then the create press release page is displayed

  @complete
  Scenario: Fill in only the title and save press release
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I enter a title for the press release
    And I save the press release
    Then the press released is saved
    And the title of the press release is displayed

  @complete
  Scenario: Enter zero character title and save press release
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I submit a press release with a 0 character title
    Then a "Press release title field is required." error is displayed

  @complete
  Scenario: Enter 60 character title and save press release
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I submit a press release with a 60 character title
    Then the press released is saved
    And the title of the press release is displayed

  @failing @401 @wip
  Scenario: Enter 61 character title and save press release
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I submit a press release with a 61 character title
    Then a "Press release title field is too long." error is displayed

  @complete
  Scenario: Select a category and save press release
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I enter a title for the press release
    And I select the exams category for the press release
    And I save the press release
    Then the press released is saved
    And the category of the press release is displayed in the url
    And the category of the press release is displayed in the breadcrumb

  @complete
  Scenario: Press release tag is displayed correctly
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I enter select a tag for the press release
    And I enter a title for the press release
    And I save the press release
    Then the press released is saved
    And the tag is displayed on the press release
