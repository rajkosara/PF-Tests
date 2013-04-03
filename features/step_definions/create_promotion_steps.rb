Given(/^I create a promotion$/) do
  step "I navigate to the create promotion page"
  @british_council.create_promotion.title.set @promotion.title
  @british_council.create_promotion.internal_ref.set @promotion.internal_ref
  @british_council.create_promotion.image_tab.click
  wait_for_ajax
  @british_council.create_promotion.image_library.select_checkboxes.first.click
  wait_for_ajax
  @british_council.create_promotion.summary.set @promotion.summary
  @british_council.create_promotion.destination.set @promotion.destination
  @british_council.create_promotion.button_text.set @promotion.button_text
  @british_council.create_promotion.save_button.click
  @british_council.promotion.status.text.should include "#{@promotion.title} has been created."
end