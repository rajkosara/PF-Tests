@add_image
Feature: add image to the media library
  As an author
  I want to add image(s)
  So that these image(s) are available for our country site users.

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

  Scenario: Add image with vaild size (<1mb)
    Given I am logged in as an author
    And I navigate to the create press release page
    When I add a 1mb image to the media library
    Then the image is saved in the media library

  Scenario: Add image with invalid size (>1mb)
    Given I am logged in as an author
    And I navigate to the create press release page
    When I add a less then 1mb image to the media library
    Then the image is not saved in the media library
    And an invalid image type error message is displayed

  Scenario: Add image with a title
    Given I am logged in as an author
    And I navigate to the create press release page
    When I add a image to the media library with all input fields filled in
    Then the image is saved in the media library

  Scenario: Add image without a title
    Given I am logged in as an author
    And I navigate to the create press release page

  Scenario: Add image with a title that includes special characters

  Scenario: Add image with a title with the maximum number of characters

  Scenario: Add image with a title with 1 character

  Scenario: Add image with copyright and source information

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
