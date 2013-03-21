@add_video
Feature: add video to the media library

  @complete @solas_265 @core
  Scenario: Add video to media library
    Given I am logged in as an author user
    And I navigate to the add video page
    When I add an video to the media library
    Then the video is added to the media library

  @complete @solas_265 @core
  Scenario Outline: Add different types of videos
    Given I am logged in as an producer user
    And I navigate to the add video page
    When I add an <image_type> video to the media library
    Then the video is added to the media library

    Examples:
      | image_type |
      | youtube    |
      | vimeo      |
      | viddler    |

  @complete @solas_265 @core
  Scenario: Error is displayed when the title is missing
    Given I am logged in as an manager user
    And I navigate to the add video page
    When I add an video to the media library without a title
    Then a "Title field is required" error message is displayed on the add video page

  @complete @solas_265 @core
  Scenario: Delete video from media library
    Given I am logged in as an admin user
    And I navigate to the add video page
    When I add an video to the media library
    Then the video is added to the media library
    And I choose to edit the video
    And I choose to delete the video
    And the video has been deleted
