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
  step "I enter a course timetable title on the create course page"
  step "I enter a body for the calendar and pricing tab on the create course page"
  step "I click save on the create course page on the create course page"
end

When /^I submit a course page without a course title$/ do
  step "the create course page is displayed"
  step "I enter a about course body on the create course page"
  @british_council.create_course.title.set ""
  step "I enter a course summary on the create course page"
  step "I click on the second tab on the create course page"
  step "I enter a title for the second tab on the create course page"
  step "I enter a body for the second tab on the create course page"
  step "I click on the third tab on the create course page"
  step "I enter a title for the third tab on the create course page"
  step "I enter a body for the third tab on the create course page"
  step "I click on the calendar and pricing tab on the create course page"
  step "I enter a body for the calendar and pricing tab on the create course page"
  step "I enter a course timetable title on the create course page"
  step "I click save on the create course page on the create course page"
end

When /^I submit a course page without a course body$/ do
  step "the create course page is displayed"
  step "I enter a course summary on the create course page"
  step "I enter a course title on the create course page"
  step "I click on the second tab on the create course page"
  step "I enter a title for the second tab on the create course page"
  step "I enter a body for the second tab on the create course page"
  step "I click on the third tab on the create course page"
  step "I enter a title for the third tab on the create course page"
  step "I enter a body for the third tab on the create course page"
  step "I click on the calendar and pricing tab on the create course page"
  step "I enter a body for the calendar and pricing tab on the create course page"
  step "I enter a course timetable title on the create course page"
  step "I click save on the create course page on the create course page"
end

When /^I submit a course page without a calendar and pricing body$/ do
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
  step "I enter a course timetable title on the create course page"
  step "I click save on the create course page on the create course page"
end

When /^I enter a course summary on the create course page$/ do
  @british_council.create_course.summary.set @course.summary
end

When /^I enter a course timetable title on the create course page$/ do
  @british_council.create_course.timetable_title.set @course.timetable_title
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
  @british_council.create_course.tab_three_title.set @course.tab_three_title
end

When /^I enter a body for the third tab on the create course page$/ do
  @british_council.create_course.tab_three_body.native.send_keys @course.tab_three_body
end

When /^I click on the calendar and pricing tab on the create course page$/ do
  @british_council.create_course.timetable_tab.click
end

When /^I enter a body for the calendar and pricing tab on the create course page$/ do
  @british_council.create_course.timetable_intro.native.send_keys @course.timetable_intro
end

When /^I click save on the create course page on the create course page$/ do
  scroll_to_end_of_page
  @british_council.create_course.save_button.click
end

Then /^a "(.*?)" error message is displayed on the create course page$/ do |error_message|
  @british_council.create_course.error_message.text.should include error_message
end

When /^I create a course page$/ do
  step "I navigate to the create course page"
  step "I submit a course page"
  step "the course page is created"
end

When /^I edit the course title$/ do
  @british_council.create_course.title.set "#{@course.title} edited"
  step "I click save on the create course page on the create course page"
end

When /^I create a course page and place it under the landing page$/ do
  step "I navigate to the create course page"
  step "the create course page is displayed"
  step "I enter a about course body on the create course page"
  step "I enter a course title on the create course page"
  step "I click on the calendar and pricing tab on the create course page"
  step "I enter a course timetable title on the create course page"
  step "I enter a body for the calendar and pricing tab on the create course page"
  @british_council.create_course.meta_config.menu_tab.click
  @british_council.create_course.meta_config.menu_settings.enable_menu.click
  @british_council.create_course.meta_config.menu_settings.title.set @course.menu_title
  @british_council.create_course.meta_config.menu_settings.parent_menu.select @org_landing_page_menu_title[0...27]
  step "I publish a course"
  step "I click save on the create course page on the create course page"
  step "the course page is created"
end

When /^I publish a course$/ do
  @british_council.create_course.meta_config.publish_tab.click
  @british_council.create_course.meta_config.publish_settings.publish_status.click
end

When /^I submit a course page with levels$/ do
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
  step "I enter a course timetable title on the create course page"
  step "I enter a body for the calendar and pricing tab on the create course page"
  @british_council.create_course.levels_tab.click
  @british_council.create_course.levels_title.set @course.levels_title
  @british_council.create_course.levels_description.native.send_keys @course.levels_description
  step "I click save on the create course page on the create course page"
end


When(/^I submit a course page with a cta without an image and with an external link$/) do
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
  step "I enter a course timetable title on the create course page"
  step "I enter a body for the calendar and pricing tab on the create course page"
  @british_council.create_course.add_cta_tab.click
  @british_council.create_course.add_cta.title.set @course.cta.title
  @british_council.create_course.add_cta.url.set @course.cta.url
  @british_council.create_course.add_cta.strapline.set @course.cta.strapline
  @british_council.create_course.add_cta.header.set @course.cta.header
  @british_council.create_course.add_cta.supporting_text.native.send_keys @course.cta.supporting_text
  step "I click save on the create course page on the create course page"
end