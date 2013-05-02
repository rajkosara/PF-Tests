When(/^I submit a arts landing page with just a title$/) do
  @british_council.create_arts_landing_page.title.set @landing_page.title
  @british_council.create_arts_landing_page.save_button.click
end

Then /^the not authorized to access this arts landing page error is displayed$/ do
  @british_council.create_arts_landing_page.authorized_message.text.should include "You are not authorized to access this page."
end

When(/^I submit an arts landing page with all filled out$/) do
  @british_council.create_arts_landing_page.title.set @landing_page.title
  @british_council.create_arts_landing_page.image_library.tab.click
  wait_for_ajax
  @british_council.create_arts_landing_page.image_library.select_checkboxes.first.click
  wait_for_ajax
  @british_council.create_arts_landing_page.body_tab.click
  @british_council.create_arts_landing_page.show_hide_title.set "Show hide title"
  @british_council.create_arts_landing_page.summary.set @landing_page.summary
  @british_council.create_arts_landing_page.body.native.send_keys @landing_page.body
  @british_council.create_arts_landing_page.list_management.click
  @british_council.create_arts_landing_page.list_items.first.set @image_promotion.title
  wait_for_ajax
  @british_council.create_arts_landing_page.list_items.first.native.send_keys :arrow_down
  @british_council.create_arts_landing_page.list_items.first.native.send_keys :enter
  wait_for_ajax
  
  @british_council.create_arts_landing_page.list_items[1].set @general_info.title
  wait_for_ajax
  @british_council.create_arts_landing_page.list_items[1].native.send_keys :arrow_down
  @british_council.create_arts_landing_page.list_items[1].native.send_keys :enter
  wait_for_ajax
  @british_council.create_arts_landing_page.promo_management_tab.click

  @british_council.create_arts_landing_page.promo.first.set @image_promotion.title
  wait_for_ajax
  @british_council.create_arts_landing_page.promo.first.native.send_keys :arrow_down
  @british_council.create_arts_landing_page.promo.first.native.send_keys :enter
  wait_for_ajax
  @british_council.create_arts_landing_page.save_button.click
end

Then /^I create a arts landing page with all fields filled in$/ do
  step "I create a image in the media library"
  step "I create a general info page with an image"
  step "I create a image promotion"
  step "I navigate to the create arts landing page page"
  step "I submit an arts landing page with all filled out"
end