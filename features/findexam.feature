@PF @findexam

Feature: FindExam

    @complete @PF48 @core @Bug
    Scenario:Locations should be available on Find Exam
        Given I am logged in as an ExamAdmin user
        When Iam on the Find Exam Page
        Then Find an Exam Page should display locations
        And I log out

    @complete @core
    Scenario: From Date Should not be greater than To Date
        Given I am logged in as an ExamAdmin user
        And Iam on the Find Exam Page
        When I select From Date greater than To Date
        Then Date Error message should be displayed

    @complete @PF_35
    Scenario: Search Exams by Country
        Given I am logged in as an ExamAdmin user
        And Iam on the Find Exam Page
        When I select a Location
        And I Search for Exam Product
        Then The results should be from the selected location

