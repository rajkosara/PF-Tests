@arts_landing_page @landing_page
Feature: Arts Landing page

  @complete @solas_927 @core
  Scenario Outline: Create an Arts landing page with the minimum fields filled out
    Given I am logged in as an <user_type> user
    When I navigate to the create arts landing page page
    And I submit a arts landing page with just a title
    Then the arts landing page is created

    Examples:
      | user_type |
      | admin     |
      | manager   |
      | producer  |

  @complete @solas_927 @core @failing
  Scenario: Create an Arts landing page with the minimum fields filled out
    Given I am logged in as an author user
    When I navigate to the create arts landing page page
    Then the not authorized to access this arts landing page error is displayed

  @complete @solas_927 @core
  Scenario: Create an Arts landing page with the all fields filled out
    Given I am logged in as an admin user
    When I create a arts landing page with all fields filled in
    Then the arts landing page is created
    And the fields are displayed correctly on the arts landing page

  @complete @solas_927 @core
  Scenario: Create an Arts landing page and add to menu
    Given I am logged in as an admin user
    When I create a published arts landing page with a menu link
    Then the the arts landing page is displayed on the main menu

  @complete @solas_927 @core
  Scenario: Edit Arts landing page
    Given I am logged in as an admin user
    When I create a published arts landing page with a menu link
    And I choose to edit the arts landing page
    Then the arts landing page has been edited correctly

  @complete @solas_1376 @core
  Scenario: Black Arts landing page
    Given I am logged in as an admin user
    When I create a published arts landing page with a menu link
    Then the arts landing page is black
