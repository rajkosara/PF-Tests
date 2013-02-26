Then /^the create course page is displayed$/ do
  @british_council.create_course.should be_displayed
end

When /^I submit a course page$/ do
  step "the create course page is displayed"
  step "I enter a course summary on the create course page"
  step "I enter a about course body on the create course page"
  step "I enter a course title on the create course page"
  step "I click on the second tab on the create course page"
  step "I enter a title for the second tab on the create course page"
  step "I enter a body for the second tab on the create course page"
  step "I click on the third tab on the create course page"
  step "I enter a title for the third tab on the create course page"
  step "I enter a body for the third tab on the create course page"
  step "I click on the calendar and pricing tab on the create course page"
  step "I enter a body for the calendar and pricing tab on the create course page"
  step "I click save on the create course page on the create course page"
end

When /^I submit a course page without a course title$/ do
  step "the create course page is displayed"
  step "I enter a about course body on the create course page"
  step "I enter a course summary on the create course page"
  step "I click on the second tab on the create course page"
  step "I enter a title for the second tab on the create course page"
  step "I enter a body for the second tab on the create course page"
  step "I click on the third tab on the create course page"
  step "I enter a title for the third tab on the create course page"
  step "I enter a body for the third tab on the create course page"
  step "I click on the calendar and pricing tab on the create course page"
  step "I enter a body for the calendar and pricing tab on the create course page"
  step "I click save on the create course page on the create course page"
end

When /^I enter a course summary on the create course page$/ do
  @british_council.create_course.summary.set @course.summary
end

When /^I enter a course title on the create course page$/ do
  @british_council.create_course.title.set @course.title
end

When /^I enter a about course body on the create course page$/ do
  @british_council.create_course.about_course_body.native.send_keys @course.about_course_body
end

When /^I click on the second tab on the create course page$/ do
  @british_council.create_course.tab_two.click
end

When /^I enter a title for the second tab on the create course page$/ do
  @british_council.create_course.tab_two_title.set @course.tab_two_title
end

When /^I enter a body for the second tab on the create course page$/ do
  @british_council.create_course.tab_two_body.native.send_keys @course.tab_two_body
end

When /^I click on the third tab on the create course page$/ do
  @british_council.create_course.tab_three.click
end

When /^I enter a title for the third tab on the create course page$/ do
  @british_council.create_course.tab_three_title.set @course.tab_two_title
end

When /^I enter a body for the third tab on the create course page$/ do
  @british_council.create_course.tab_three_body.native.send_keys @course.tab_two_body
end

When /^I click on the calendar and pricing tab on the create course page$/ do
  @british_council.create_course.calendar_pricing_tab.click
end

When /^I enter a body for the calendar and pricing tab on the create course page$/ do
  @british_council.create_course.calendar_pricing_body.native.send_keys @course.calendar_pricing_body
end

When /^I click save on the create course page on the create course page$/ do
  @british_council.create_course.save_button.click
end

Then /^a "(.*?)" error message is displayed on the create course page$/ do |error_message|
  @british_council.create_course.error_message.text.should include error_message
end