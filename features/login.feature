@PF @login
Feature: Login

  @complete @core @smoke @smoke_live
  Scenario: User logs in successfully
    Given I navigate to the login page
    When I enter the admin user username
    And I enter the admin user password
    And I click on login
    Then the Page header displays the admin username
    

  @complete @core @smoke
  Scenario: User logs in unsuccessfully
    Given I navigate to the login page
    When I enter the invalid user username
    And I enter the invalid user password
    And I click on login
    Then the Authentication error message is displayed

  @complete @core @smoke @smoke_live
  Scenario: User logs in with invalid password unsuccessfully
    Given I navigate to the login page
    When I enter the admin user username
    And I enter the invalid user password
    And I click on login
    Then the Authentication error message is displayed

  @complete @core @smoke
  Scenario: User logs out
    Given I am logged in as an admin user
    When I log out
    Then the admin user is logged out

  @complete @core @smoke  @PF_209
  Scenario: Back to HomePage url should not be visible before country selection
    When I am logged in as an admin user
    Then Header should not display Back to HomePage URL

  @wip @core @smoke
  Scenario: Mandatory Fields Error messages displayed for empty login
    Given I navigate to the login page
    When I click on login
    Then Mandatory Fields Error message should be displayed
