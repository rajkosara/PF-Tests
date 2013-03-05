When /^the create teaching centre page is displayed$/ do
  @british_council.create_teaching_centre.should be_displayed
end

When /^I submit a teaching centre page$/ do
  step "the create teaching centre page is displayed"
  @british_council.create_teaching_centre.title.set @teaching_centre.title
  @british_council.create_teaching_centre.address_one.set @teaching_centre.address_one
  @british_council.create_teaching_centre.address_two.set @teaching_centre.address_two
  @british_council.create_teaching_centre.post_code.set @teaching_centre.post_code
  @british_council.create_teaching_centre.city.set @teaching_centre.city
  @british_council.create_teaching_centre.state.set @teaching_centre.state
  @british_council.create_teaching_centre.telephone_number.set @teaching_centre.telephone_number
  @british_council.create_teaching_centre.fax_number.set @teaching_centre.fax_number
  @british_council.create_teaching_centre.summary.set @teaching_centre.summary
  @british_council.create_teaching_centre.body.native.send_keys @teaching_centre.body
  @british_council.create_teaching_centre.email_address.set @teaching_centre.email_address
  @british_council.create_teaching_centre.calendar_tab.click
  @british_council.create_teaching_centre.calendar_body.native.send_keys @teaching_centre.calendar_body
  @british_council.create_teaching_centre.contact_and_location_tab.click
  @british_council.create_teaching_centre.contact_and_location_body.native.send_keys @teaching_centre.contact_location_body
  @british_council.create_teaching_centre.facilities_tab.click
  @british_council.create_teaching_centre.facilities_body.native.send_keys @teaching_centre.facilities_body
  @british_council.create_teaching_centre.save_button.click
end