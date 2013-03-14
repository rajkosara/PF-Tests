Then /^the course page is created$/ do
  @british_council.course.status.text.should include "Course #{@course.title} has been created."
  @created_course_url = @british_council.course.current_url
end

When /^I select to edit the course page$/ do
  @british_council.course.edit.click
end

Then /^the course title is edited$/ do
  @british_council.course.title.text.should include "#{@course.title} edited"
end

Then /^the course details are displayed correctly$/ do
  @british_council.course.title.text.should include @course.title
  @british_council.course.about_course_body.text.should include @course.about_course_body
  @british_council.course.tab_two_title.click
  @british_council.course.tab_two_title.text.should include @course.tab_two_title
  @british_council.course.tab_two_body.text.should include @course.tab_two_body
  @british_council.course.tab_three_title.click
  @british_council.course.tab_three_title.text.should include @course.tab_three_title
  @british_council.course.tab_three_body.text.should include @course.tab_three_body
  @british_council.course.timetable_tab.click
  @british_council.course.timetable_tab.text.should == @course.timetable_title
  @british_council.course.timetable_tab_body.text.should include @course.timetable_intro
end

Then /^the landing page is the course pages parent$/ do
  @british_council.course.current_url.should include "#{@landing_page.title.downcase.gsub(" ","-").gsub(":","")}/#{@course.title.downcase.gsub(" ","-").gsub(":","")}"
end

Then /^the levels tab is displayed on the course page$/ do
  @british_council.course.should have_levels_tab
  @british_council.course.levels_tab.text.should include "Levels"
end

Then /^the course title is displayed on the course page$/ do
  @british_council.course.title.text.should == @course.title
end

Then /^the course details are displayed correctly on mobile$/ do
  @british_council.mobile_course.title.text.should include @course.title
  @british_council.mobile_course.about_course_body.text.should include @course.about_course_body
  @british_council.mobile_course.tab_two_title.click
  @british_council.mobile_course.tab_two_title.text.should include @course.tab_two_title
  @british_council.mobile_course.tab_two_body.text.should include @course.tab_two_body
  @british_council.mobile_course.tab_three_title.click
  @british_council.mobile_course.tab_three_title.text.should include @course.tab_three_title
  @british_council.mobile_course.tab_three_body.text.should include @course.tab_three_body
  @british_council.mobile_course.timetable_title.click
  @british_council.mobile_course.timetable_tab_body.text.should include @course.timetable_intro
end
