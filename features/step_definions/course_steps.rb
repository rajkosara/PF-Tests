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

Then(/^the two level are displayed on the course page$/) do
  step "the levels tab is displayed on the course page"
  @british_council.course.levels_tab.click
  @british_council.course.level.title.first.text.should == @course.levels_title
  @british_council.course.level.description.first.text.should == @course.levels_description
  @british_council.course.level.title.last.click
  @british_council.course.level.title.last.text.should == "#{@course.levels_title} second one"
  @british_council.course.level.description.last.text.should == "#{@course.levels_description} second one"
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

Then(/^the CTA without an image and with an external link is displayed correctly on the course page$/) do
  @british_council.course.about_cta.text.should == @course.cta.title
  @british_council.course.about_strapline.text.should == @course.cta.strapline.upcase

  @british_council.course.cta_box.last.title_link.text == @course.cta.title
  @british_council.course.cta_box.last.text.should include @course.cta.header.upcase
  @british_council.course.cta_box.last.supporting_text.text == @course.cta.supporting_text

  @number_of_ctas = @british_council.course.cta_box.collect do |thing|
    thing.title_link[:href] == @course.cta.url
  end
  @number_of_ctas.size == 4

  @british_council.course.tab_two_title.click
  @british_council.course.cta_box.first.title_link.text == @course.cta.title
  @british_council.course.cta_box.first.strapline.text == @course.cta.strapline.upcase

  @british_council.course.tab_three_title.click
  @british_council.course.cta_box[1].title_link.text == @course.cta.title
  @british_council.course.cta_box[1].strapline.text == @course.cta.strapline.upcase

  @british_council.course.timetable_tab.click
  @british_council.course.cta_box[2].title_link.text == @course.cta.title
  @british_council.course.cta_box[2].strapline.text == @course.cta.strapline.upcase
end

Then(/^the CTA with an image and with an internal link is displayed correctly on the course page$/) do
  @british_council.course.about_cta.text.should == @course.cta.title
  @british_council.course.about_strapline.text.should == @course.cta.strapline.upcase

  @british_council.course.cta_box.last.title_link.text == @course.cta.title
  @british_council.course.cta_box.last.text.should include @course.cta.header.upcase
  @british_council.course.cta_box.last.supporting_text.text == @course.cta.supporting_text

  @number_of_ctas = @british_council.course.cta_box.collect do |thing|
    thing.title_link[:href] == @landing_page.url
  end
  @number_of_ctas.size == 4

  @british_council.course.tab_two_title.click
  @british_council.course.cta_box.first.title_link.text == @course.cta.title
  @british_council.course.cta_box.first.strapline.text == @course.cta.strapline.upcase

  @british_council.course.tab_three_title.click
  @british_council.course.cta_box[1].title_link.text == @course.cta.title
  @british_council.course.cta_box[1].strapline.text == @course.cta.strapline.upcase

  @british_council.course.timetable_tab.click
  @british_council.course.cta_box[2].title_link.text == @course.cta.title
  @british_council.course.cta_box[2].strapline.text == @course.cta.strapline.upcase
  @british_council.course.should have_cta_image
end

Then(/^the CTA without an image and with an external link is displayed correctly on the course page on mobile$/) do
  @british_council.mobile_course.about_cta.text.should == @course.cta.title
  @british_council.mobile_course.about_strapline.text.should == @course.cta.strapline.upcase

  @british_council.mobile_course.cta_box.last.title_link.text == @course.cta.title
  @british_council.mobile_course.cta_box.last.text.should include @course.cta.header.upcase
  @british_council.mobile_course.cta_box.last.supporting_text.text == @course.cta.supporting_text

  @number_of_ctas = @british_council.mobile_course.cta_box.collect do |thing|
    thing.title_link[:href] == @course.cta.url
  end
  @number_of_ctas.size == 4

  @british_council.mobile_course.tab_two_title.click
  @british_council.mobile_course.cta_box.first.title_link.text == @course.cta.title
  @british_council.mobile_course.cta_box.first.strapline.text == @course.cta.strapline.upcase

  @british_council.mobile_course.tab_three_title.click
  @british_council.mobile_course.cta_box[1].title_link.text == @course.cta.title
  @british_council.mobile_course.cta_box[1].strapline.text == @course.cta.strapline.upcase

  @british_council.mobile_course.timetable_title.click
  @british_council.mobile_course.cta_box[2].title_link.text == @course.cta.title
  @british_council.mobile_course.cta_box[2].strapline.text == @course.cta.strapline.upcase
end