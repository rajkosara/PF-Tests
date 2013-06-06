@PF @userroles

Feature: User_Roles

    @complete @smoke @PF_33
    Scenario: Sys Admin Should see All URLs on Home Page
        Given I am logged in as an admin user
        When Iam on the Home Page
        Then All URLs should be shown

    @complete @smoke @PF_33
    Scenario: Course Admin Should only see Course URLs on Home Page
        Given I am logged in as an CourseAdmin user
        When Iam on the Home Page
        Then Only Course URLs should be shown

    @complete @smoke @PF_33
    Scenario: Exam Admin Should only see Exam URL on Home Page
        Given I am logged in as an ExamAdmin user
        When Iam on the Home Page
        Then Only Find Exam URL should be shown

    @complete @smoke @PF_33
    Scenario: Manager Should only see Users URL on Home Page
        Given I am logged in as an manager user
        When Iam on the Home Page
        Then Only Add User URL should be show
