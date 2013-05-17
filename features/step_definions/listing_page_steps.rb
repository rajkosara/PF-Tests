Then(/^the press release listing page is created$/) do
  @british_council.listing_page.status.text.should include "Listing page Press release Listing Page Title has been created."
end

Then(/^then created press release is displayed on the press release listing page$/) do
  @other_thing = @british_council.listing_page.list_item.select do |thing|
    thing.text == @press_release.title
  end
  @other_thing.size == 1
end

Then(/^the text promo is displayed on the listings page$/) do
  @british_council.listing_page.sidebar_text_promotions.last.title.text.should == @text_promotion.title
  @british_council.listing_page.sidebar_text_promotions.last.summary.text.should == @text_promotion.summary
  @british_council.listing_page.sidebar_text_promotions.last.destination[:href].should == @text_promotion.destination
end

When(/^I choose to edit the press release listing page$/) do
  @british_council.listing_page.edit_button.click
  @british_council.create_listing_page.title.set "Press release Listing Page Title EDITED"
  @british_council.create_listing_page.save_button.click
end

Then(/^the press release listing page is edited correctly$/) do
  @british_council.listing_page.title.text.should == "Press release Listing Page Title EDITED"
end