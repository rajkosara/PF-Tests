Then /^the event page is created$/ do
  @british_council.event.status.text.should include "Event #{@event.title} has been created."
end

Then(/^the image is displayed correctly on the event page$/) do
  @british_council.event.should have_image
end

Then(/^the cta is displayed correctly on the event page$/) do
  @british_council.event.cta_box.title_link[:href] == @event.cta.url
  @british_council.event.cta_box.title_link.text == @event.cta.title
  @british_council.event.cta_box.strapline.text == @event.cta.strapline.upcase
end