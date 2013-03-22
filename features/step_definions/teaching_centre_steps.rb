Then /^the teaching centre page is created$/ do
  @british_council.teaching_centre.status.text.should include "Teaching centre #{@teaching_centre.title} has been created."
end

Then(/^the teaching centre page details are displayed correctly$/) do
  step "the teaching centre page is created"
  @british_council.teaching_centre.title.text.should == @teaching_centre.title
  @british_council.teaching_centre.address.text.should include(@teaching_centre.address_one,@teaching_centre.address_two, @teaching_centre.post_code, @teaching_centre.city, @teaching_centre.state)
  @british_council.teaching_centre.phone_number.text.should == @teaching_centre.telephone_number
  @british_council.teaching_centre.fax_number.text.should == @teaching_centre.fax_number
  @british_council.teaching_centre.email_address.text.should == @teaching_centre.email_address
  @british_council.teaching_centre.body.text.should == @teaching_centre.body
  @british_council.teaching_centre.calendar_tab.text.should == "Calendar"
  @british_council.teaching_centre.calendar_tab.click
  @british_council.teaching_centre.calendar_body.text.should include @teaching_centre.calendar_body
  @british_council.teaching_centre.facilities_tab.click
  @british_council.teaching_centre.facilities_body.text.should include @teaching_centre.facilities_body
end

Then(/^the teaching centre page details are displayed correctly on mobile$/) do
  step "the teaching centre page is created"
  @british_council.mobile_teaching_centre.title.text.should == @teaching_centre.title
  @british_council.mobile_teaching_centre.address.text.should include(@teaching_centre.address_one,@teaching_centre.address_two, @teaching_centre.post_code, @teaching_centre.city, @teaching_centre.state)
  @british_council.mobile_teaching_centre.phone_number.text.should == @teaching_centre.telephone_number
  @british_council.mobile_teaching_centre.fax_number.text.should == @teaching_centre.fax_number
  @british_council.mobile_teaching_centre.email_address.text.should == @teaching_centre.email_address
  @british_council.mobile_teaching_centre.body.text.should == @teaching_centre.body
  @british_council.mobile_teaching_centre.calendar_tab.text.should == "Calendar"
  @british_council.mobile_teaching_centre.calendar_tab.click
  @british_council.mobile_teaching_centre.calendar_body.text.should include @teaching_centre.calendar_body
  @british_council.mobile_teaching_centre.contact_and_location_tab.text.should == "Contact and location"
  @british_council.mobile_teaching_centre.contact_and_location_tab.click
  @british_council.mobile_teaching_centre.contact_and_location_body.text.should include @teaching_centre.contact_location_body
  @british_council.mobile_teaching_centre.facilities_tab.click
  @british_council.mobile_teaching_centre.facilities_body.text.should == @teaching_centre.facilities_body
end

Given /^I choose to the translate a teaching centre page$/ do
  @british_council.teaching_centre.translate_button.click
  step "wait for translate page to be displayed"
end


Then(/^the translated teaching centre page is displayed$/) do
  @british_council.mobile_teaching_centre.address.text.should include("#{@teaching_centre.address_one} TRANSLATED","#{@teaching_centre.address_two} TRANSLATED")
end

When(/^I choose to the edit a teaching centre page$/) do
  @british_council.teaching_centre.edit_button.click
end

Then(/^the edited teaching centre page is displayed$/) do
  @british_council.mobile_teaching_centre.title.text.should == "#{@teaching_centre.title} EDITED"
end

Then(/^the opening hours are displayed on the teaching centre page$/) do
  @british_council.teaching_centre.contact_and_location_tab.click
  @british_council.teaching_centre.contact_and_location_body.telephone_enquiries.text.should include("REGULAR OPENING HOURS", "10:00-17:00")
  @british_council.teaching_centre.contact_and_location_body.visitor_opening_hours.text.should include("Non-teaching weeks".upcase, "08:30-20:30")
  @british_council.teaching_centre.contact_and_location_body.text.should include("22 Jan (Sun) - 24 Jan (Tue) Lunar New Year","Telephone enquiries opening hours","Visitor opening hours")
end

Then(/^the course timetable and terms times are displayed$/) do
  @british_council.teaching_centre.calendar_tab.click
  @british_council.teaching_centre.calendar_body.text.should include("Course timetable")
  @british_council.teaching_centre.calendar_body.text.should include("Course dates".upcase, "Price".upcase, "Term dates")
end

Then(/^the image is displayed on the about tab on the teaching centre page$/) do
  @british_council.teaching_centre.should have_image
end

Then(/^the image is displayed on the contact and location tab on the teaching centre page$/) do
  @british_council.teaching_centre.contact_and_location_tab.click
  @british_council.teaching_centre.should have_contact_location_image
end

Then(/^the associated course is displayed on the teaching centre$/) do
  @british_council.teaching_centre.course.listing_title.text.should == "English courses we offer at this centre that are very boring, but not as boring as other courses that other companies offer"
  @british_council.teaching_centre.course.first_course_title.text.should == "This is for the big people"
  @british_council.teaching_centre.course.second_course_title.text.should  == "This is for the small people and only the small people"
  @british_council.teaching_centre.course.courses.each do |course_titles|
    course_titles.text.should == @course.title
  end
end

Then(/^the book placement cta is displayed on the teaching centre$/) do
  step "the teaching centre page is created"
  @number_of_ctas = @british_council.teaching_centre.cta_box.collect do |thing|
    thing.title_link[:href] == @teaching_centre.cta.url
  end
  @number_of_ctas.size == 2

  @british_council.teaching_centre.cta_box.first.title_link.text == @teaching_centre.cta.title
  @british_council.teaching_centre.cta_box.first.strapline.text == @teaching_centre.cta.strapline.upcase

  @british_council.teaching_centre.cta_box.last.title_link.text == @teaching_centre.cta.title
  @british_council.teaching_centre.cta_box.last.strapline.text == @teaching_centre.cta.strapline.upcase
end

Then(/^the document is displayed on the teaching centre$/) do
  step "the teaching centre page is created"
  @british_council.teaching_centre.should have_document_name
  @british_council.teaching_centre.document_name.text.should == @document.document_name
end

Then(/^the teaching is displayed on the teaching centre page$/) do
  @british_council.teaching_centre_listing_page.should be_displayed
  @created_teaching_centre = @british_council.teaching_centre_listing_page.teaching_centre_details.find do |thing|
    thing.name.text == @teaching_centre.title
  end
  @created_teaching_centre.name.text.should == @teaching_centre.title
  @created_teaching_centre.address.text.should include(@teaching_centre.address_one,@teaching_centre.address_two, @teaching_centre.post_code, @teaching_centre.city, @teaching_centre.state)
  @created_teaching_centre.phone_number.text.should == @teaching_centre.telephone_number
  @created_teaching_centre.fax_number.text == @teaching_centre.fax_number
  @created_teaching_centre.email.text == @teaching_centre.email_address
end