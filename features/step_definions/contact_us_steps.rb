When(/^I submit a contact us page$/) do
  @british_council.create_contact_us.title.set @contact_us.title
  @british_council.create_contact_us.intro_tab.click
  Timeout.timeout(30) { sleep(0.1) until @british_council.create_contact_us.intro.visible?}
  @british_council.create_contact_us.intro.native.send_keys @contact_us.intro
  @british_council.create_contact_us.call_us_tab.click
  @british_council.create_contact_us.call_us_title.set @contact_us.call_us_title
  @british_council.create_contact_us.phone_number_label.set @contact_us.phone_number_label
  @british_council.create_contact_us.phone_number.set @contact_us.phone_number
  @british_council.create_contact_us.send_and_enquiry_tab.click
  @british_council.create_contact_us.enquiry_form_title.set @contact_us.enquiry_form_title
  @british_council.create_contact_us.strapline.set @contact_us.enquiry_strapline
  @british_council.create_contact_us.enquiry_button_title.set @contact_us.enquiry_button_title
  @british_council.create_contact_us.enquiry_url.set @contact_us.enquiry_button_url
  @british_council.create_contact_us.teaching_centre_contact_details_tab.click
  @british_council.create_contact_us.teaching_centre.first.set @teaching_centre.title
  wait_for_ajax
  Timeout.timeout(30) { sleep(0.1) until @british_council.create_contact_us.dropdown.visible?}
  @british_council.create_contact_us.teaching_centre.first.native.send_keys :arrow_down
  @british_council.create_contact_us.teaching_centre.first.native.send_keys :enter
  wait_for_ajax
  scroll_to_end_of_page
  @british_council.create_contact_us.save_button.click
end

Then(/^the contact us page is created$/) do
  @british_council.contact_us.status.text.should include "Contact #{@contact_us.title} has been created."
end

Then(/^the all the fields are displayed correctly on the contact us page$/) do
  @british_council.contact_us.title.text.should == @contact_us.title
  @british_council.contact_us.intro.text.should == @contact_us.intro
  @british_council.contact_us.call_us_title.text.should ==@contact_us.call_us_title
  @british_council.contact_us.phone_number_label.text.should == @contact_us.phone_number_label
  @british_council.contact_us.phone_number.text.should == @contact_us.phone_number
  @british_council.contact_us.enquiry_form_title.text.should == @contact_us.enquiry_form_title
  @british_council.contact_us.contact_us_button.text.should == @contact_us.enquiry_button_title
  @british_council.contact_us.contact_us_button[:href].should == @contact_us.enquiry_button_url
  @british_council.contact_us.teaching_centre_title.first.text.should == @teaching_centre.title

  @created_teaching_centre = @british_council.contact_us.teaching_centre_details.find  { |thing| thing.address.text.include?  @teaching_centre.address_one }
  @created_teaching_centre.address.text.should include(@teaching_centre.address_one,@teaching_centre.address_two, @teaching_centre.post_code, @teaching_centre.city, @teaching_centre.state)
  @created_teaching_centre.phone_number.text.should == @teaching_centre.telephone_number
  @created_teaching_centre.fax_number.text == @teaching_centre.fax_number
  @created_teaching_centre.email.text == @teaching_centre.email_address
end

Then(/^the contact us block should not be displayed on the contact us page$/) do
  @british_council.contact_us.contact_us_block.should_not be_visible
end