Then /^the create course page is displayed$/ do
  @british_council.create_course.should be_displayed
end

When /^I submit a course page$/ do
  step "the create course page is displayed"
  @british_council.create_course.summary.set @course.summary
  @british_council.create_course.about_course_body.native.send_keys @course.about_course_body
  @british_council.create_course.title.set @course.title
  @british_council.create_course.tab_two.click
  @british_council.create_course.tab_two_title.set @course.tab_two_title
  @british_council.create_course.tab_two_body.native.send_keys @course.tab_two_body
  @british_council.create_course.tab_three.click
  @british_council.create_course.tab_three_title.set @course.tab_three_title
  @british_council.create_course.tab_three_body.native.send_keys @course.tab_three_body
  @british_council.create_course.calendar_pricing_tab.click
  @british_council.create_course.calendar_pricing_body.native.send_keys @course.calendar_pricing_body
  @british_council.create_course.save_button.click
end