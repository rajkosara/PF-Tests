@PF @AddUser
Feature: user

  @complete @core
  Scenario Outline: Create New Users
    Given I am logged in as an admin user
    And I am  on the add user page
    When I Save a new <user_type> user
    Then the user has been successfully created
    And the user should appear under Edit List

     Examples:
      | user_type               |
      | manager                 |
      | exam administrator      |
      | course administrator    |


@complete @PF_67 @core
  Scenario Outline: Managers cannot edit System Admin records
    Given I am logged in as an manager user
    And Iam on the Find User Page
    When I Search for <user_type> Record
    Then Edit Record option should be <edit_status>

     Examples:
      | user_type               | edit_status   |
      | System Administrator    | Not Available |
      | Exam Administrator      | Available     |
      | Course Administrator    | Available     |
