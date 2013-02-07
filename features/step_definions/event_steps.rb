Then /^the event page is created$/ do
  @british_council.event.status.text.should include "Event #{@event.title} has been created."
end