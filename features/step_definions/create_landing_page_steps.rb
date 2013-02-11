Then /^the create landing page page is displayed$/ do
  @british_council.create_landing_page.should be_displayed
end

When /^I save the landing page$/ do
  @british_council.create_landing_page.save_button.click
end

When /^I submit a landing page$/ do
  step "the create landing page page is displayed"
  step "I enter a title for the landing page"
  step "I enter a summary for the landing page"
  step "I enter a body for the landing page"
  step "I save the landing page"
end

When /^I enter a title for the landing page$/ do
  @british_council.create_landing_page.title.set @landing_page.title
end

When /^I enter a summary for the landing page$/ do
  @british_council.create_landing_page.summary.set @landing_page.summary
end

When /^I enter a body for the landing page$/ do
  @british_council.create_landing_page.body.set @landing_page.body
end