Then /^the create event page is displayed$/ do
  @british_council.create_event.should be_displayed
end

When /^I save the event page$/ do
  @british_council.create_event.save_button.click
  wait_for_ajax
end

When /^I submit a event page$/ do
  step "the create event page is displayed"
  step "I enter a title for the event page"
  step "I enter a summary for the event page"
  step "I enter a description for the event page"
  step "I enter a city for the event page"
  step "I enter a start date for the event page"
  step "I enter a end date for the event page"
  step "I enter a external link for the event page"
  step "I save the event page"
end

When /^I submit a event page without a title$/ do
  step "the create event page is displayed"
  step "I enter a description for the event page"
  step "I enter a city for the event page"
  step "I save the event page"
end

When /^I submit a event page without a description$/ do
  step "the create event page is displayed"
  step "I enter a title for the event page"
  step "I enter a city for the event page"
  step "I save the event page"
end

When /^I submit a event page without a city$/ do
  step "the create event page is displayed"
  step "I enter a title for the event page"
  step "I enter a description for the event page"
  step "I save the event page"
end

When /^I enter a title for the event page$/ do
  @british_council.create_event.title.set @event.title
end

When /^I enter a summary for the event page$/ do
  @british_council.create_event.summary.set @event.summary
end

When /^I enter a description for the event page$/ do
  @british_council.create_event.event_description.native.send_keys @event.event_description
end

When /^I enter a city for the event page$/ do
  @british_council.create_event.city.set @event.city
end

When /^I enter a start date for the event page$/ do
  @british_council.create_event.start_date.set @event.start_date
end

When /^I enter a end date for the event page$/ do
  @british_council.create_event.end_date.set @event.end_date
end

When /^I enter a external link for the event page$/ do
  @british_council.create_event.external_link.first.title.set @event.external_link_title
  @british_council.create_event.external_link.first.link.set @event.external_link_link
end

Then /^a "(.*?)" error message is displayed on the create event page$/ do |error_message|
  #this isnt pretty, but for some reason it makes the test work
  wait_for_ajax
  Timeout.timeout(30) { sleep(0.1) until @british_council.create_event.displayed?}
  @british_council.create_event.error_message.text.should include error_message
  wait_for_ajax
  step "the create event page is displayed"
  #sleep 3
end

When /^I enter a title with 70 characters for the event page$/ do
  @title = String.random(70)
  @british_council.create_event.title.set @title
end

Then /^a zero characters remaining error message is displayed on the create event page$/ do
  @british_council.create_event.counter_message.text.should include "Content limited to 60 characters, remaining: 0"
  @british_council.create_event.title.text.should_not == @title
end


Then /^I publish a event page$/ do
  @british_council.create_event.meta_config.publish_tab.click
  @british_council.create_event.meta_config.publish_settings.publish_status.click
end

When /^I submit a published event page$/ do
  step "the create event page is displayed"
  step "I enter a title for the event page"
  step "I enter a summary for the event page"
  step "I enter a description for the event page"
  step "I enter a city for the event page"
  #step "I enter a start date for the event page"
  #step "I enter a end date for the event page"
  step "I enter a external link for the event page"
  step "I publish a event page"
  step "I save the event page"
end

When /^I open the url path settings on the create event page$/ do
  @british_council.create_faq.meta_config.url_path_setting.click
end

Then /^the generate automatic URL alias is checked by default on the create event page$/ do
  @british_council.create_faq.meta_config.url_path_settings.generate_auto_url_checkbox.should be_checked
end

Then /^the filename field is disabled by default on the create event page$/ do
  @british_council.create_faq.meta_config.url_path_settings.filename[:disabled] == true
end