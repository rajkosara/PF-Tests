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

Then(/^the event fields and displayed correctly$/) do
  step "the event page is created"
  @british_council.event.title.text.should == @event.title
  @british_council.event.event_date.text.should include @event.venue.upcase
  @british_council.event.description.text.should include @event.event_description
  @british_council.event.address_one.text.should == @event.address_one
  @british_council.event.address_two.text.should == @event.address_two
  @british_council.event.city.text.should == @event.city
  @british_council.event.postcode.text.should == @event.postcode
  @british_council.event.country.text.should == @event.country
  @british_council.event.should have_map
end