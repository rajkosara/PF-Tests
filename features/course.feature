@course
Feature: Course

  @complete @solas_593 @core
  Scenario Outline: Create a course page
    Given I am logged in as an <user_type> user
    When I navigate to the create course page
    And I submit a course page
    Then the course page is created

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_593 @core
  Scenario: Error message displayed when title field is not filled in
    Given I am logged in as an author user
    When I navigate to the create course page
    And I submit a course page without a course title
    Then a "Title field is required" error message is displayed on the create course page

  @complete @solas_593 @core
  Scenario: Error message displayed when body field is not filled in
    Given I am logged in as an manager user
    When I navigate to the create course page
    And I submit a course page without a course body
    Then a "Body field is required" error message is displayed on the create course page

  @complete @solas_593 @core
  Scenario: Error message displayed when body field is not filled in
    Given I am logged in as an producer user
    When I navigate to the create course page
    And I submit a course page without a calendar and pricing body
    Then a "Timetable introduction field is required" error message is displayed on the create course page

  @complete @solas_593 @core
  Scenario: Edit a course page
    Given I am logged in as an producer user
    When I create a course page
    And I select to edit the course page
    And I edit the course title
    Then the course title is edited

  @complete @solas_593 @core
  Scenario: Course details are displayed correctly
    Given I am logged in as an author user
    When I navigate to the create course page
    And I submit a course page
    Then the course details are displayed correctly

  @complete @solas_593 @core
  Scenario: Add a course to a menu
    Given I am logged in as an admin user
    And I create a published landing page
    When I create a course page and place it under the landing page
    Then the landing page is the course pages parent

  @complete @solas_571 @core
  Scenario: Levels tab displayed correctly
    Given I am logged in as an author user
    When I navigate to the create course page
    And I submit a course page with levels
    Then the course page is created
    And the levels tab is displayed on the course page

  @complete @solas_571 @core @mobile
  Scenario: Course details are displayed correctly on mobile
    Given I am logged in as an author user
    When I navigate to the create course page
    And I submit a course page
    And I am using a mobile device
    Then the course details are displayed correctly on mobile

  @complete @solas_848 @core
  Scenario: CTA without image and with an external link is displayed correctly
    Given I am logged in as an admin user
    When I navigate to the create course page
    And I submit a course page with a cta without an image and with an external link
    Then the course page is created
    And the CTA without an image and with an external link is displayed correctly on the course page

  @complete @solas_848 @core
  Scenario: CTA with an image and with an internal link is displayed correctly
    Given I am logged in as an admin user
    And I create a image in the media library
    And I create a published landing page
    When I navigate to the create course page
    And I submit a course page with a cta with an image and with an internal link
    Then the course page is created
    And the CTA with an image and with an internal link is displayed correctly on the course page

  @complete @solas_848 @core @mobile
  Scenario: CTA without image and with an external link is displayed correctly
    Given I am logged in as an admin user
    When I navigate to the create course page
    And I submit a course page with a cta without an image and with an external link
    Then the course page is created
    And I am using a mobile device
    And the CTA without an image and with an external link is displayed correctly on the course page on mobile