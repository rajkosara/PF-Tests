@login
Feature: Login

  @wip @core @smoke @smoke_live  
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

  @wip @core @smoke
  Scenario: User logs out
    Given I am logged in as an admin user
    When I log out
    Then the admin user is logged out