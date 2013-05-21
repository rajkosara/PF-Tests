@PF @home_page
Feature: Home Page

Background:
    Given I am logged in as an admin user
    When I Select a country
    And When I Click Ok

    @complete @core @smoke
    Scenario: Home page displays the username and Welcome message
        Then the Page header displays the admin username
        And the Home Page displays the Welcome message with admin username

    @complete  @core @smoke
    Scenario: Home page displays all the urls
        Then the home page shows all urls

    @complete @Core
    Scenario: Create Course url takes to Create Course Page
        When I click on Create a New Course link
        Then Create course page should be displayed

    @complete @Core
    Scenario: Change existing Course url takes to Change Course Page
        When I click on Change existing Course link
        Then Change course page should be displayed

    @complete @Core
    Scenario: Find a Course url takes to Find Course Page
        When I click on Find a Course link
        Then Find course page should be displayed

    @complete @Core
    Scenario: Find an Exam url takes to Find Exam Page
        When I click on Find an Exam link
        Then Find exam page should be displayed

    @complete @Core
    Scenario: Add-Edit IPF user url takes to Find User Page
        When I click on Add/Edit IPF user link
        Then Find user page should be displayed
