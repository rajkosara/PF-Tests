Given(/^I create a image promotion$/) do
  step "I navigate to the create image promotion page"
  @british_council.create_image_promotion.title.set @image_promotion.title
  @british_council.create_image_promotion.internal_ref.set @image_promotion.internal_ref
  @british_council.create_image_promotion.image_tab.click
  wait_for_ajax
  @british_council.create_image_promotion.image_library.select_checkboxes.first.click
  wait_for_ajax
  @british_council.create_image_promotion.summary.set @image_promotion.summary
  @british_council.create_image_promotion.destination.set @image_promotion.destination
  @british_council.create_image_promotion.button_text.set @image_promotion.button_text
  @british_council.create_image_promotion.save_button.click
  scroll_to_end_of_page
  @british_council.image_promotion.status.text.should include "#{@image_promotion.title} has been created."
end

Given(/^I create a text promotion$/) do
  step "I navigate to the create text promotion page"
  @british_council.create_text_promotion.title.set @text_promotion.title
  @british_council.create_text_promotion.internal_ref.set @text_promotion.internal_ref
  @british_council.create_text_promotion.summary.set @text_promotion.summary
  @british_council.create_text_promotion.destination.set @text_promotion.destination
  @british_council.create_text_promotion.save_button.click
  @british_council.text_promotion.status.text.should include "#{@text_promotion.title} has been created."
end