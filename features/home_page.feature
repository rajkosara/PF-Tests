@home_page
Feature: Home Page

  @complete @solas_416 @core
  Scenario: Home page logo displayed
    When I navigate to the home page
    Then the british council logo is displayed on the home page

  @complete @solas_416 @core
  Scenario: Home page displays the country correctly
    When I navigate to the home page
    Then the country is displayed on the home page

  @complete @solas_416 @core
  Scenario: Home page displays the language switcher on desktop
    When I navigate to the home page
    Then the header displays the language switcher

  @complete @solas_416 @core
  Scenario: Home page displays the language switcher on desktop
    When I navigate to the home page
    Then the header displays the language switcher

  @solas_416 @core @mobile
  Scenario: Home page displays the language switcher on mobile
    Given I navigate to the home page
    And I am using a mobile device
    Then the header doesnt displays the language switcher

  @complete @solas_416 @core
  Scenario: The header is displayed on the home page
    When I navigate to the home page
    Then the header is displayed on the home page

  @complete @solas_416 @core
  Scenario: The footer is displayed on the home page
    When I navigate to the home page
    Then the footer is displayed on the home page

  @complete @solas_894 @korea @japan
  Scenario: Create home page
    Given I am logged in as an admin user
    And I create a image in the media library
    And I create a image promotion
    And I navigate to the create home page page
    When I submit a home page
    Then the homepage is created
    And all the fields are displayed correctly on the home page

  @complete @solas_894 @korea @japan
  Scenario: Edit home page
    Given I am logged in as an admin user
    And I create a image in the media library
    And I create a image promotion
    And I navigate to the create home page page
    When I submit a home page
    And the homepage is created
    And I choose to edit the home page
    Then the homepage is edited correctly

  @complete @solas_1145 @greece
  Scenario: Home page displays facebook wiget on greece
    When I navigate to the home page
    Then the facebook wiget is displayed on the homepage

  @complete @solas_1145 @korea @japan
  Scenario: Home page displays facebook wiget on korea
    When I navigate to the home page
    Then the facebook wiget is not displayed on the homepage
