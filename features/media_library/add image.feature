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
    When I add an gif image to the media library
    Then an image type error is displayed on the add image page

  @complete @solas_259 @core
  Scenario: Add image with invalid size (>1mb)
    Given I am logged in as an author user
    And I navigate to the add image page
    When I add an invaild sized image to the media library
    Then an image size error is displayed on the add image page


  @not_started
  Scenario: Add image with a title
    Given I am logged in as an author
    And I navigate to the create press release page
    When I add an image to the media library with all input fields filled in
    Then the image is saved in the media library
    And image title is saved in the media library

  @not_started
  Scenario: Add image without a title
    Given I am logged in as an author
    And I navigate to the create press release page
    When I add an image to the media library without a title
    Then the image is not saved in the media library
    And an missing title error message is displayed

  @not_started
  Scenario: Add image with a title that includes special characters

  @not_started
  Scenario: Add image with a title with the maximum number of characters
    Given I am logged in as an author
    And I navigate to the create press release page
    When I add an image to the media library with "put number here" of characters in the title
    Then the image is saved in the media library
    And the image title is saved in the media library

  @not_started
  Scenario: Add image with a title with 1 character
    Given I am logged in as an author
    And I navigate to the create press release page
    When I add an image to the media library with "1" of characters in the title
    Then the image is saved in the media library

  @not_started
  Scenario: Add image with copyright and source information
    Given I am logged in as an author
    And I navigate to the create press release page
    When I add an image to the media library with all input fields filled in
    Then the image is saved in the media library

  Scenario: Add image without copyright and source information

  Scenario: Add image with copyright and source information that includes special characters

  Scenario: Add image with copyright and source information with the maximum number of characters

  Scenario: Add image with copyright and source information with 1 character

  Scenario: Add image with a tool tip description

  Scenario: Add image without a tool tip description

  Scenario: Add image with a tool tip description that includes special characters

  Scenario: Add image with a tool tip description with the maximum number of characters

  Scenario: Add image with a tool tip description with 1 characters

  Scenario: Add 1 image to General info, Course, Project, Teaching centre

  Scenario: Add 5 images to General info, Course, Project, Teaching centre

  Scenario: Add 1 image to Course, Event, Exams, IELTS, Partner, Press Release, Teacher

  Scenario: Add 2 images to Exams

  Scenario: Add image to Job vacancy

  Scenario: Use an existing image
