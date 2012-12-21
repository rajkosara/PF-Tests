@footer
Feature: Footer

  @complete
  Scenario: Footer is displyed on the home page
    Given I navigate to the home page
    Then the footer is displyed on the home page

  @complete
  Scenario: Correct menus are displayed on the footer
    Given I navigate to the home page
    And the footer is displyed on the home page
    Then the footer contains the about british council menu
    And the footer contains the partner with us menu
    And the footer contains the teach english menu

  @complete
  Scenario: Correct links are displayed on the about british council menu
    Given I navigate to the home page
    Then the biographies link is displayed in the about british council menu
    And the british council global link is displayed in the about british council menu
    And the job opportunities link is displayed in the about british council menu
    And the press enquiries link is displayed in the about british council menu

  @complete
  Scenario: Correct links are displayed on the partner with us menu
    Given I navigate to the home page
    Then the why partner with us link is displayed in the partner with is menu
    And the contact partnerships link is displayed in the partner with is menu
    And the our track record link is displayed in the partner with is menu

  @wip
  Scenario: Correct links are displayed on the teach english menu
    Given I navigate to the home page
