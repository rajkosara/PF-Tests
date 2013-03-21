Given(/^I create a partner$/) do
  step "I create a image in the media library"
  step "I navigate to the create partner page"
  @british_council.create_partner.partner_name.set @partner.title
  @british_council.create_partner.summary.native.send_keys @partner.summary
  @british_council.create_partner.image_library.select_checkboxes.first.click
  wait_for_ajax
  @british_council.create_partner.save_button.click
  @british_council.partner.status.text.should include "Partner #{@partner.title} has been created."
end