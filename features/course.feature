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

  @complete @solas_593 @core @problematic
  Scenario: Error message displayed when title field is not filled in
    Given I am logged in as an author user
    When I navigate to the create course page
    And I submit a course page without a course title
    Then a "Title field is required" error message is displayed on the create course page

  @complete @solas_593 @core @problematic
  Scenario: Error message displayed when body field is not filled in
    Given I am logged in as an manager user
    When I navigate to the create course page
    And I submit a course page without a course body
    Then a "Body field is required" error message is displayed on the create course page

  @complete @solas_593 @core @problematic
  Scenario: Error message displayed when timetable field is not filled in
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

  @complete @solas_571 @solas_550 @core
  Scenario: Levels tab displayed correctly
    Given I am logged in as an author user
    When I navigate to the create course page
    And I submit a course page with levels
    Then the course page is created
    And the levels tab is displayed on the course page

  @complete @solas_571 @solas_550 @core
  Scenario: Levels tab displayed correctly with two levels
    Given I am logged in as an author user
    When I navigate to the create course page
    And I submit a course page with two levels
    Then the course page is created
    And the two level are displayed on the course page

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
  Scenario: CTA without image and with an external link is displayed correctly on mobile
    Given I am logged in as an admin user
    When I navigate to the create course page
    And I submit a course page with a cta without an image and with an external link
    Then the course page is created
    And I am using a mobile device
    And the CTA without an image and with an external link is displayed correctly on the course page on mobile

  @complete @solas_674 @core
  Scenario: Create a course page with a timetable
    Given I am logged in as an author user
    When I navigate to the create course page
    And I submit a course page with a timetable
    Then the course page is created
    And the timetable is displayed on the course page

  @complete @solas_762 @core
  Scenario: Breadcrumbs appear correctly for a course and a landing page
    Given I am logged in as an admin user
    And I create a published landing page
    When I create a course page and place it under the landing page
    Then the landing page is the course pages parent
    And the landing page is in the breadcrumbs on the course page

  @complete @solas_762 @core
  Scenario: Breadcrumbs appear correctly for 3 deep
    Given I am logged in as an admin user
    And I create a published landing page
    When I create a course page and place it under the landing page
    And I create a general info page a place it under the course page
    Then the landing page and the course page are in the breadcrumbs on the general info page

  @complete @solas_553 @core
  Scenario: Create a course page with a linked teaching centre
    Given I am logged in as an admin user
    And I create a published teaching centre
    When I navigate to the create course page
    And I submit a course page with a linked teaching centre
    And the course page is created
    Then the linked course is displayed on the course page

  @complete @solas_926 @core
  Scenario: Create a course page with a docucment
    Given I am logged in as an admin user
    And I create a document in the media library
    When I navigate to the create course page
    And I submit a course page with document
    And the course page is created
    Then the document is displayed on the course page

  @complete @solas_813 @core
  Scenario: The secondary navigation menu is displayed
    Given I am logged in as an admin user
    And I create a published landing page
    When I create a course page and place it under the landing page
    And I create a general info page a place it under the course page
    And I logout and navigate back to the course page
    Then the landing page and general info page are in the secondary navigation menu

  @complete @solas_813 @core
  Scenario: The secondary navigation menu is displayed and landing page is not displayed
    Given I am logged in as an admin user
    And I create a published landing page
    And I create a course page and place it under the landing page
    And I create a general info page a place it under the course page
    And I logout and navigate back to the course page
    When I navigate to general info page using the secondary navigation menu on the course page
    Then the course is displayed and the landing pag is not
    
  @complete @solas_1128 @core
  Scenario: Create a course page with a two linked teaching centre
    Given I am logged in as an admin user
    And I create two published teaching centre
    When I navigate to the create course page
    And I submit a course page with two linked teaching centres
    And the course page is created
    Then the two linked courses is displayed on the course page