When /^the create teaching centre page is displayed$/ do
  @british_council.create_teaching_centre.should be_displayed
end

When /^I create a teaching centre page$/ do
  step "I navigate to the create teaching centre page"
  step "I submit a teaching centre page"
end

When /^I submit a teaching centre page$/ do
  step "the create teaching centre page is displayed"
  step "I enter a title into the teahing create teaching centre page"
  @british_council.create_teaching_centre.address_one.set @teaching_centre.address_one
  @british_council.create_teaching_centre.address_two.set @teaching_centre.address_two
  @british_council.create_teaching_centre.post_code.set @teaching_centre.post_code
  @british_council.create_teaching_centre.city.set @teaching_centre.city
  @british_council.create_teaching_centre.state.set @teaching_centre.state
  @british_council.create_teaching_centre.telephone_number.set @teaching_centre.telephone_number
  @british_council.create_teaching_centre.fax_number.set @teaching_centre.fax_number
  @british_council.create_teaching_centre.summary.set @teaching_centre.summary
  step "I enter an about body into the teahing create teaching centre page"
  @british_council.create_teaching_centre.email_address.set @teaching_centre.email_address
  @british_council.create_teaching_centre.calendar_tab.click
  @british_council.create_teaching_centre.calendar_body.native.send_keys @teaching_centre.calendar_body
  step "I enter an contact and location body into the teahing create teaching centre page"
  @british_council.create_teaching_centre.facilities_tab.click
  @british_council.create_teaching_centre.facilities_body.native.send_keys @teaching_centre.facilities_body
  @british_council.create_teaching_centre.save_button.click
end

When /^I enter a title into the teahing create teaching centre page$/ do
  @british_council.create_teaching_centre.title.set @teaching_centre.title
end

When /^I enter an about body into the teahing create teaching centre page$/ do
  @british_council.create_teaching_centre.body.native.send_keys @teaching_centre.body
end

When /^I enter an contact and location body into the teahing create teaching centre page$/ do
  @british_council.create_teaching_centre.contact_and_location_tab.click
  @british_council.create_teaching_centre.contact_and_location_body.native.send_keys @teaching_centre.contact_location_body
end

When /^I submit a teaching centre page without a title$/ do
  step "I enter an about body into the teahing create teaching centre page"
  @british_council.create_teaching_centre.email_address.set @teaching_centre.email_address
  step "I enter an contact and location body into the teahing create teaching centre page"
  step "I save a teaching centre"
end

When /^I save a teaching centre$/ do
  @british_council.create_teaching_centre.save_button.click
end

Then(/^a "(.*?)" error message is displayed on the create teaching centre page$/) do |error_messge|
  @british_council.create_teaching_centre.error_message.text.should include error_messge
end

When(/^I translate the teaching centre page$/) do
  Timeout.timeout(30) { sleep(0.1) until @british_council.create_teaching_centre.current_url.include? "translation"}
  @british_council.create_teaching_centre.address_one.set "#{@teaching_centre.address_one} TRANSLATED"
  @british_council.create_teaching_centre.address_two.set "#{@teaching_centre.address_two} TRANSLATED"
  step "I save a teaching centre"
end

When(/^I edit the teaching centre page$/) do
  @british_council.create_teaching_centre.title.set "#{@teaching_centre.title} EDITED"
  step "I save a teaching centre"
end