@add_video
Feature: add video to the media library

  @solas_265 @core
  Scenario Outline: Add video to media library
    Given I am logged in as an <user_type> user
    And I navigate to the add video page
    When I add an video to the media library
    Then the video is added to the media library

    Examples:
      | user_type |
      | admin     |
      #| author    |
      #| manager   |
      #| producer  |