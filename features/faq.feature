@faq
Feature: Faq

  @complete @failing @solas_157 @core
  Scenario Outline: Create a faq page
    Given I am logged in as an <user_type> user
    When I navigate to the create faq page
    And I submit a faq page
    Then the faq page is created

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |
