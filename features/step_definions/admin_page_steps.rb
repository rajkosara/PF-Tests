Then /^the admin page should be displayed$/ do
  @british_council.administration.should be_displayed
end

When(/^I enter some legal text on the site info page$/) do
  @legal_text = "This is some super awesome legal text"
  @british_council.site_info.legal_info.set @legal_text
  @british_council.site_info.save_button.click
end