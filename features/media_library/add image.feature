@add_image
Feature: add image to the media library

  @complete @solas_259 @core
  Scenario Outline: Add image to media library
    Given I am logged in as an <user_type> user
    And I navigate to the add image page
    When I add an image to the media library
    Then the image is added to the media library

    Examples:
      | user_type |
      | admin     |
      | author    |
      | manager   |
      | producer  |

  @complete @solas_259 @core
  Scenario Outline: Add different types of image
    Given I am logged in as an <user_type> user
    And I navigate to the add image page
    When I add an <image_type> image to the media library
    Then the image is added to the media library

    Examples:
      | image_type | user_type |
      | png        | admin     |
      | jpg        | author    |
      | jpeg       | manager   |

  @complete @solas_259 @core
  Scenario: Add invalid image type
    Given I am logged in as an author user
    And I navigate to the add image page
    When I add an tif image to the media library
    Then an image type error is displayed on the add image page

  @complete @solas_259 @core
  Scenario: Add image with invalid size (>1mb)
    Given I am logged in as an author user
    And I navigate to the add image page
    When I add an invaild sized image to the media library
    Then an image size error is displayed on the add image page

  @complete @solas_259 @core
  Scenario: Add image without a title
    Given I am logged in as an author user
    And I navigate to the add image page
    When I add an image to the media library without a tile
    Then a "Title field is required" error message is displayed on the add image page
