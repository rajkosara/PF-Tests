Then /^the course page is created$/ do
  @british_council.course.status.text.should include "Course #{@course.title} has been created."
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
  @british_council.course.calendar_and_pricing.click
  @british_council.course.calendar_pricing_tab_body.text.should include @course.calendar_pricing_body
end

Then /^the landing page is the course pages parent$/ do
  @british_council.course.current_url.should include "#{@landing_page.title.downcase.gsub(" ","-").gsub(":","")}/#{@course.title.downcase.gsub(" ","-").gsub(":","")}"
end
