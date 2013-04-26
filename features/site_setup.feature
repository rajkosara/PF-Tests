@site_setup
Feature: Site setup

  @complete @solas_1247 @core @smoke
  Scenario: Current language is correct
    Given I am logged in as an admin user
    When I navigate to the regional language page
    Then the default language is set correctly

  @complete @solas_1247 @core @korea
  Scenario: Current language is Korean
    Given I am logged in as an admin user
    When I navigate to the regional language page
    Then the Korean language is set correctly

  @complete @solas_1247 @core @greece
  Scenario: Current language is greek
    Given I am logged in as an admin user
    When I navigate to the regional language page
    Then the Greek language is set correctly

  @complete @solas_1247 @core @japan
  Scenario: Current language is japanese
    Given I am logged in as an admin user
    When I navigate to the regional language page
    Then the Japanese language is set correctly

  @complete @solas_1247 @core @egypt
  Scenario: Current language is Arabic
    Given I am logged in as an admin user
    When I navigate to the regional language page
    Then the Arabic language is set correctly

  @complete @solas_1247 @greece @failing
  Scenario: Current country is Greece
    Given I am logged in as an admin user
    When I navigate to the regional settings page
    Then the Greece country is set correctly

  @complete @solas_1247 @japan @failing
  Scenario: Current country is Japan
    Given I am logged in as an admin user
    When I navigate to the regional settings page
    Then the Japan country is set correctly

  @complete @solas_1247 @egypt
  Scenario: Current country is Egypt
    Given I am logged in as an admin user
    When I navigate to the regional settings page
    Then the Egypt country is set correctly

  @complete @solas_1247 @korea @failing
  Scenario: Current country is Korea
    Given I am logged in as an admin user
    When I navigate to the regional settings page
    Then the Korea country is set correctly
