@PF @FindUser

Feature: FindUser


Background:
    Given I am logged in as an admin user
    And Iam on the Find User Page


    @complete @core
    Scenario: Invalid Search Results No Data Available
        When I Enter Invalid username,firstname,lastname
        And I click on Find User button
        Then Search results should not display

    @complete @core
    Scenario: Clear Search Fields
        When I Enter username,firstname,lastname
        And I click on Clear button
        Then Search Fields text should be empty

    @complete @core
    Scenario: Navigate to Create User Account page
        When I Perform Search
        And I Click on Add Record
        Then Page title should be Create User Account

    @complete @core
    Scenario: Navigate to Edit User Details page
        When I Perform Search
        And I Click on Edit Record
        Then Page title should be Edit User Details

    @Pending @core @Bug
    Scenario: Empty Search should not disable page
        When I Perform Empty Search
        Then Page should not be disabled
