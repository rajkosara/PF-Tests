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

  @failing @401
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

  #this test may be wrong and may need deleting
  @failing
  Scenario: Press release path name is displayed correctly
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I enter a title for the press release
    And I enter a path name for a press release
    And I save the press release
    Then the press released is saved
    And the path name is displayed on the press release

  @complete
  Scenario: Press release published date is displayed correctly
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I enter a title for the press release
    And I enter a published date for the press release
    And I save the press release
    Then the press released is saved
    And the published date is displayed on the press release

  #parked for now, due to using iframes
  @failing
  Scenario: Press release body is displayed correctly
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I enter a title for the press release
    And I enter the body text for the press release
    And I save the press release
    Then the press released is saved
    And the body text is displayed on the press release

  @complete
  Scenario: Press release notes to editor is displayed correctly
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I enter a title for the press release
    And I enter the notes to editor text for the press release
    And I save the press release
    Then the press released is saved
    And the notes to editor is displayed on the press release

  @complete
  Scenario: Press release about the british council is displayed correctly
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I enter a title for the press release
    And I enter the about the british council for the press release
    And I save the press release
    Then the press released is saved
    And the about the british council is displayed on the press release

  @complete
  Scenario: Press release image is displayed correctly
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I enter a title for the press release
    And I enter the image path for the press release
    And I upload the image to the press release
    And I save the press release
    Then the press released is saved
    And the image is displayed on the press release
