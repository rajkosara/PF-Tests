@add_image
Feature: add image to the media library
  As an author
  I want to add image(s)
  So that these image(s) are available for our country site users.

  @not_started
  Scenario Outline: Add valid image during page creation
    Given I am logged in as an author
    And I navigate to the create press release page
    When I add a <type> image to the media library
    Then the image is saved in the media library

    Examples:
      | type |
      | jpg  |
      | jpeg |
      | png  |

  @not_started
  Scenario Outline: Add invalid image during page creation
    Given I am logged in as an author
    And I navigate to the create press release page
    When I add a <type> image to the media library
    Then the image is not saved in the media library
    And an invalid image type error message is displayed

    Examples:
      | type |
      | tiff |
      | gif  |

  @not_started
  Scenario: Add image with vaild size (<1mb)
    Given I am logged in as an author
    And I navigate to the create press release page
    When I add a 1mb image to the media library
    Then the image is saved in the media library

  @not_started
  Scenario: Add image with invalid size (>1mb)
    Given I am logged in as an author
    And I navigate to the create press release page
    When I add a less then 1mb image to the media library
    Then the image is not saved in the media library
    And an invalid image type error message is displayed

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
