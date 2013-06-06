Then /^the home page shows all urls$/ do
  @british_council.home_page.should have_changecountry
  @british_council.home_page.should have_backto_homepage
  @british_council.home_page.should_not have_createcourse
  @british_council.home_page.should have_find_examurl
  @british_council.home_page.should have_AddEditUser
  @british_council.home_page.should_not have_find_courseurl
end


Then /^the Home Page displays the Welcome message with (admin|author|manager|producer) username$/ do |user_type|
  #@british_council.home_page.welcome_label== "Welcome " + Helpers::Config["#{user_type}_username"] + ","
  @british_council.home_page.welcome_label == "Welcome #{Helpers::Config["#{user_type}_username"]} ,"
end

When(/^I click on Find a Course link$/) do
  step "Go to Main Menu"
  @british_council.home_page.find_courseurl.last.click
end

Then(/^Find course page should be displayed$/) do
  @british_council.home_page.title.should include "Find Course"
end

When(/^I click on Create a New Course link$/) do
  step "Go to Main Menu"
  @british_council.home_page.createcourse.click
end

Then(/^Create course page should be displayed$/) do
  @british_council.home_page.title.should include "CreateCourse"
end

When(/^I click on Change existing Course link$/) do
    step "Go to Main Menu"
    @british_council.home_page.find_courseurl.first.click
end

Then(/^Change course page should be displayed$/) do
  @british_council.home_page.title.should include "Find Course"
  #@british_council.home_page.findcourse_body.text.should include "Find a Course"
end

When(/^I click on Find an Exam link$/) do
  step "Go to Main Menu"
  @british_council.home_page.find_examurl.click
end

Then(/^Find exam page should be displayed$/) do
  @british_council.home_page.title.should include "Find Exam"
end

When(/^I click on Add\/Edit IPF user link$/) do
  step "Go to Main Menu"
  @british_council.home_page.AddEditUser.click
end

Then(/^Find user page should be displayed$/) do
  @british_council.home_page.title.should include "Find User"
end

Then(/^Go to Main Menu$/) do
  @british_council.home_page.backto_homepage.click()
end

Given(/^Iam on the Home Page$/) do
  #step "I am logged in as an admin user"
  step "I Select a country"
  step "When I Click Ok"
end