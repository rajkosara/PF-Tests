@findexam

Feature: FindExam

    @wip @PF48
    Scenario: Find Exam by location
        Given I am logged in as an admin user
        When I Select a country
        And When I Click on Find an Exam
        Then Find an Exam Page should display locations
        And I log out

        #Examples:
        #|country_name|country_id|
        #|Germany     |34        |
        #|Greece      |36        |
        