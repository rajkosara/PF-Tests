@header
Feature: Header

  @complete
  Scenario: Header is displyed on the home page
    Given I navigate to the home page
    Then the header is displyed on the home page

  @complete
  Scenario: Header contains home link and icon
    Given I navigate to the home page
    Then the header contains the home link and icon

  @complete
  Scenario: Header contains learn english link
    Given I navigate to the home page
    Then the header contains the learn english menu

  @complete
  Scenario: Header contains take an exam link
    Given I navigate to the home page
    Then the header contains the take an exam menu

  @complete
  Scenario: Header contains study in the uk link
    Given I navigate to the home page
    Then the header contains the study in the uk menu

  @complete
  Scenario: Header contains whats on link
    Given I navigate to the home page
    Then the header contains the whats on link

  @complete
  Scenario: Header contains our work in arts, education and society
    Given I navigate to the home page
    Then the header contains our work in arts, education and society link

Scenario: Hearder displayes a link to change language to french
Scenario: Hearder displayes a link to change language to english
Scenario: Hearder displayes a link to our teaching centres
Scenario: Hearder displayes a link to blog
Scenario: Hearder displayes a link to sign up for our newsletter
Scenario: Hearder displayes a link to contact us
Scenario: Hearder displayes a link to search
Scenario: Hearder displayes a link to teach english
Scenario: Hearder displayes a link to ielts