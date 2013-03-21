@ielts
Feature: IELTS

  @complete @solas_226 @core
  Scenario: Create a ielts page
    Given I am logged in as an admin user
    When I navigate to the create ielts page
    And I submit a ielts page
    Then the ielts page is created

  @complete @solas_226 @core
  Scenario Outline: Users cant create a ielts page
    Given I am logged in as an <user_type> user
    When I navigate to the create ielts page
    Then the not authorized to access this page error is displayed

    Examples:
      | user_type |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_226 @core
  Scenario: Error displayed when title missing
    Given I am logged in as an admin user
    When I navigate to the create ielts page
    And I submit a ielts page without a title
    Then a "Title field is required" error message is displayed on the create ielts page

  @complete @solas_226 @core
  Scenario: Edit a ielts page
    Given I am logged in as an admin user
    When I create an ielts page
    And I choose to edit an ielts page
    And I edit the ielts title on the create ielts page
    And the edited ielts title is displayed on the ielts page

  @complete @solas_226 @core @translate
  Scenario: Translate a ielts page
    Given I am logged in as an admin user
    And I create an ielts page
    When I choose to the translate an ielts page
    And I click add translation on the translate page
    And I translate the ielts page
    Then the translated ielts page is displayed

  @complete @solas_226 @core
  Scenario: Fields are displayed correctly on an ielts page
    Given I am logged in as an admin user
    When I create an ielts page
    Then the ielts page is displayed correctly displayed

  @complete @solas_923 @core
  Scenario: Add document to an ielts page
    Given I am logged in as an admin user
    And I create a document in the media library
    When I create an ielts page with an document
    Then the document is displayed correctly on the ielts page

  @complete @solas_923 @core
  Scenario: Add cta to an ielts page
    Given I am logged in as an admin user
    And I create a image in the media library
    When I create an ielts page with cta with an image
    Then the cta is displayed correctly on the ielts page

  @complete @solas_592 @core @translate @korea
  Scenario: Translate a ielts page and switch back to the english version
    Given I am logged in as an admin user
    And I create an ielts page with english and korea versions
    When the korean tab of the lan switcher is selected on the ielts page
    And I click the english tab of the lan switcher
    Then the english version of the page is displayed
