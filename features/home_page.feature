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
