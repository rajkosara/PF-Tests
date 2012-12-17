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
    When I submit a press release with default fields filled in
    Then the press released is saved
    And the title of the press release is displayed

  @complete
  Scenario: Enter zero character title and save press release
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I submit a press release with a 0 character title
    Then a "Title field is required." error is displayed

  @complete
  Scenario: Enter 60 character title and save press release
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I submit a press release with a 60 character title
    Then the title of the press release is displayed

  @failing @401
  Scenario: Enter 61 character title and save press release
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I submit a press release with a 61 character title
    Then a "Press release title field is too long." error is displayed

  @complete
  Scenario: Press release published date is displayed correctly
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I submit a press release with a published date
    Then the published date is displayed on the press release

  @complete
  Scenario: Press release body is displayed correctly
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I submit a press release with default fields filled in
    Then the body text is displayed on the press release

  @failing @508
  Scenario: Press release notes to editor is displayed correctly
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I submit a press release with a notes to editor
    And the notes to editor is displayed on the press release

  @failing @508
  Scenario: Press release about the british council is displayed correctly
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I submit a press release with an about the british council
    Then the about the british council is displayed on the press release

  @complete
  Scenario: Press release image is displayed correctly
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I submit a press release with an uploaded image
    Then the image is displayed on the press release

  @complete
  Scenario: Press release document is displayed correctly
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I submit a press release with an uploaded documment
    Then the documment is displayed on the press release

  @complete
  Scenario: Press release with default fields
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I submit a press release with default fields filled in
    Then the default fields are displayed on the press release

  @complete
  Scenario: Press release title and Press release content required error is displayed correctly
    Given I am logged in as a super user
    And I navigate to the create press release page
    When I save the press release
    Then a "Title field is required." error is displayed
    And a "Press release body field is required." error is displayed
