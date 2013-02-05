#this step should only be used as part of other steps and not in scenarios
When /^I create a general info object$/ do
  @general_info = Model::Domain::Content.new
  @general_info.set_content_type :general_info
end

Then /^the create general info page is displayed$/ do
  @british_council.create_general_info.should be_displayed
end

When /^I save the general info page$/ do
  @british_council.create_general_info.save_button.click
end

When /^I submit a general info page$/ do
  step "the create general info page is displayed"
  @british_council.create_general_info.title.set @general_info.title
  @british_council.create_general_info.summary.set @general_info.summary
  @british_council.create_general_info.body.native.send_key @general_info.body
  step "I save the general info page"
end
