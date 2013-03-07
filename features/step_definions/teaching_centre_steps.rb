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
  @british_council.teaching_centre.calendar_body.text.should == @teaching_centre.calendar_body
  @british_council.teaching_centre.facilities_tab.click
  @british_council.teaching_centre.facilities_body.text.should == @teaching_centre.facilities_body
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
  @british_council.mobile_teaching_centre.calendar_body.text.should == @teaching_centre.calendar_body
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