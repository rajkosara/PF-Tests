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
  @british_council.create_event.title.set @event.title
  @british_council.create_event.summary.set @event.summary
  @british_council.create_event.event_description.native.send_keys @event.event_description
  @british_council.create_event.city.set @event.city
  #@british_council.create_event.start_date.set @event.start_date
  #@british_council.create_event.end_date.set @event.end_date
  @british_council.create_event.external_link.first.title.set @event.external_link_title
  @british_council.create_event.external_link.first.link.set @event.external_link_link
  step "I save the event page"
end