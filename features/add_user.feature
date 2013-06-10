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

@complete @core
  Scenario Outline: User Roles are ticked by default while editing User Record
    Given I am logged in as an admin user
    And Iam on the Find User Page
    When I Search for <user_type> Record
    And I Click on Edit Record
    And I Click on Amend Details button
    Then <user_type> user role is ticked by default

     Examples:
      | user_type            |
      | Manager              |
      | Exam Administrator   |
      | Course Administrator |

  @complete @core
  Scenario: Should not allow to create user without selecting user roles
    Given I am logged in as an admin user
    And I am  on the add user page
    When I Click on Create button without selecting user roles
    Then "Select atleast one role." message should appear

  @wip @core
  Scenario: Should not allow to create user without selecting a country
    Given I am logged in as an admin user
    And I am  on the add user page
    When I Click on next button without selecting country
    Then I Should remain on the same page
