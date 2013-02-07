When /^I create a event object$/ do
  @event = Model::Domain::Content.new
  @event.set_content_type :event
end

Then /^the create event page is displayed$/ do
  @british_council.create_event.should be_displayed
end

When /^I save the event page$/ do
  @british_council.create_event.save_button.click
end

When /^I submit a event page$/ do
  step "the create event page is displayed"
  Step "I enter a title for the event page"
  step "I enter a summary for the event page"
  step "I enter a description for the event page"
  step "I enter a city for the event page"
  #step "I enter a start date for the event page"
  #step "I enter a end date for the event page"
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
  @british_council.create_event.error_message.text.should include error_message
end