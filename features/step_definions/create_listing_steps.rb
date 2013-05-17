When(/^I submit a press release listing page$/) do
  @british_council.create_listing_page.title.set "Press release Listing Page Title"
  @british_council.create_listing_page.body.native.send_keys "Press Release Listing body"
  @british_council.create_listing_page.listings.tab.click
  @british_council.create_listing_page.listings.title.set "Listings title"
  @british_council.create_listing_page.listings.dropdown.text.should include "press_office_listing - Press Releases"
  @british_council.create_listing_page.listings.dropdown.select "press_office_listing - Press Releases"
  @british_council.create_listing_page.save_button.click
end

When(/^I submit a press release listing page with a promo$/) do
  @british_council.create_listing_page.title.set "Press release Listing Page Title"
  @british_council.create_listing_page.body.native.send_keys "Press Release Listing body"
  @british_council.create_listing_page.listings.tab.click
  @british_council.create_listing_page.listings.title.set "Listings title"
  @british_council.create_listing_page.listings.dropdown.text.should include "press_office_listing - Press Releases"
  @british_council.create_listing_page.listings.dropdown.select "press_office_listing - Press Releases"
  @british_council.create_listing_page.sidebar_promo.first.set @text_promotion.title
  @british_council.create_listing_page.save_button.click
end