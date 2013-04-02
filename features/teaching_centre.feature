@teaching_centre
Feature: teaching Centre

  @complete @solas_368 @core
  Scenario Outline: Create a teaching centre page
    Given I am logged in as an <user_type> user
    When I navigate to the create teaching centre page
    And I submit a teaching centre page
    Then the teaching centre page is created

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_368 @core
  Scenario: Error message displayed when title field is not filled in
    Given I am logged in as an author user
    When I navigate to the create teaching centre page
    And I submit a teaching centre page without a title
    Then a "Title field is required" error message is displayed on the create teaching centre page

  @complete @solas_810 @core @problematic
  Scenario: Add and order teaching centre page on a landing page
    Given I am logged in as an admin user
    And I create a published landing page
    And I create a teaching centre page
    When I navigate to the created published landing page
    And I choose to the edit landing page
    And I enter the teching centre page and landing page as children
    And I save the landing page
    Then the teaching centre page and landing page are displayed in the correct order

  @complete @solas_368 @core
  Scenario: Create a teaching centre page and the page is displayed correctly
    Given I am logged in as an producer user
    When I navigate to the create teaching centre page
    And I submit a teaching centre page
    Then the teaching centre page is created
    And the teaching centre page details are displayed correctly

  @complete @solas_368 @core @mobile
  Scenario: Create a teaching centre page and the page is displayed correctly on mobile
    Given I am logged in as an producer user
    When I navigate to the create teaching centre page
    And I submit a teaching centre page
    And I am using a mobile device
    Then the teaching centre page is created
    And the teaching centre page details are displayed correctly on mobile

  @complete @solas_368 @core @translate @problematic
  Scenario: Translate teaching centre
    Given I am logged in as an admin user
    And I create a teaching centre page
    When I choose to the translate a teaching centre page
    When I click add translation on the translate page
    And I translate the teaching centre page
    Then the translated teaching centre page is displayed

  @complete @solas_368 @core
  Scenario: Edit teaching centre
    Given I am logged in as an admin user
    And I create a teaching centre page
    When I choose to the edit a teaching centre page
    And I edit the teaching centre page
    Then the edited teaching centre page is displayed

  @complete @solas_550 @core
  Scenario: Contact and location information tables displayed
    Given I am logged in as an author user
    When I navigate to the create teaching centre page
    And I submit a teaching centre page
    Then the teaching centre page is created
    And the opening hours are displayed on the teaching centre page

  @complete @solas_685 @core
  Scenario: Calendar is displayed correctly on the teaching centre page
    Given I am logged in as an author user
    When I navigate to the create teaching centre page
    And I submit a teaching centre page
    Then the teaching centre page is created
    And the course timetable and terms times are displayed

  @complete @solas_735 @core
  Scenario: Add image to about tab on teaching centre
    Given I am logged in as an producer user
    And I create a image in the media library
    When I navigate to the create teaching centre page
    And I submit a teaching centre page with image on the about tab
    Then the teaching centre page is created
    And the image is displayed on the about tab on the teaching centre page

  @complete @solas_735 @core
  Scenario: Add image to contact and location tab on teaching centre
    Given I am logged in as an producer user
    And I create a image in the media library
    When I navigate to the create teaching centre page
    And I submit a teaching centre page with image on the contact and location tab
    Then the teaching centre page is created
    And the image is displayed on the contact and location tab on the teaching centre page

  @complete @solas_653 @core
  Scenario: Add course to a teaching centre
    Given I am logged in as an admin user
    And I create a published course
    When I navigate to the create teaching centre page
    And I submit a teaching centre page with a course associated
    Then the teaching centre page is created
    And the associated course is displayed on the teaching centre

  @complete @solas_842 @core
  Scenario: Create teaching centre with book placesment cta
    Given I am logged in as an admin user
    When I navigate to the create teaching centre page
    And I submit a teaching centre page with a book placement cta
    Then the teaching centre page is created
    And the book placement cta is displayed on the teaching centre

  @complete @solas_961 @core
  Scenario: Create teaching centre with a document
    Given I am logged in as an admin user
    And I create a document in the media library
    When I navigate to the create teaching centre page
    And I submit a teaching centre page with a document
    Then the teaching centre page is created
    And the document is displayed on the teaching centre

  @complete @solas_365 @core
  Scenario: Teaching centres listing page
    Given I am logged in as an admin user
    And I create a published teaching centre page
    When I navigate to the teaching centre listings page
    Then the teaching is displayed on the teaching centre page


  @complete @solas_551 @core
  Scenario: Create teaching centre with a map
    Given I am logged in as an author user
    When I navigate to the create teaching centre page
    And I submit a teaching centre page with a map
    Then the teaching centre page is created
    And the map is displayed on the teaching centre