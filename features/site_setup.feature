@site_setup
Feature: Site setup

  @complete @solas_1247 @core @smoke @smoke_live
  Scenario: Current language is correct
    Given I am logged in as an admin user
    When I navigate to the regional language page
    Then the default language is set correctly

  @complete @solas_1247 @korea
  Scenario: Current language is Korean
    Given I am logged in as an admin user
    When I navigate to the regional language page
    Then the Korean language is set correctly

  @complete @solas_1247 @greece
  Scenario: Current language is greek
    Given I am logged in as an admin user
    When I navigate to the regional language page
    Then the Greek language is set correctly

  @complete @solas_1247 @japan
  Scenario: Current language is japanese
    Given I am logged in as an admin user
    When I navigate to the regional language page
    Then the Japanese language is set correctly

  @complete @solas_1247 @egypt
  Scenario: Current language is Arabic
    Given I am logged in as an admin user
    When I navigate to the regional language page
    Then the Arabic language is set correctly

  @complete @solas_1247 @poland
  Scenario: Current language is Polish
    Given I am logged in as an admin user
    When I navigate to the regional language page
    Then the Polish language is set correctly

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

  @complete @solas_1247 @poland
  Scenario: Current country is Poland
    Given I am logged in as an admin user
    When I navigate to the regional settings page
    Then the Poland country is set correctly

  @complete @solas_1247 @thailand
  Scenario: Current country is Thailand
    Given I am logged in as an admin user
    When I navigate to the regional settings page
    Then the Thailand country is set correctly

  @complete @solas_1247 @core @failing @smoke_live
  Scenario: Current country is set to the corret default
    Given I am logged in as an admin user
    When I navigate to the regional settings page
    Then the default country is set correctly

  @complete @solas_1293 @poland
  Scenario: Current timezone is correct for Poland
    Given I am logged in as an admin user
    When I navigate to the regional settings page
    Then the correct timezone is displayed for poland

  @complete @solas_1293 @thailand
  Scenario: Current timezone is correct for thailand
    Given I am logged in as an admin user
    When I navigate to the regional settings page
    Then the correct timezone is displayed for thailand

  @complete @solas_1293 @egypt
  Scenario: Current timezone is correct for egypt
    Given I am logged in as an admin user
    When I navigate to the regional settings page
    Then the correct timezone is displayed for egypt