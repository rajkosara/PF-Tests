When(/^I submit a arts landing page with just a title$/) do
  @british_council.create_arts_landing_page.title.set @landing_page.title
  @british_council.create_arts_landing_page.save_button.click
end

Then /^the not authorized to access this arts landing page error is displayed$/ do
  @british_council.create_arts_landing_page.authorized_message.text.should include "You are not authorized to access this page."
end