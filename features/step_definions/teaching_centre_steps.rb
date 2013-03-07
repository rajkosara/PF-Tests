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