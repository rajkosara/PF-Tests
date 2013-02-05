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
  step "I enter a title for the general info page"
  step "I enter a summary for the general info page"
  step "I enter a body for the general info page"
  step "I save the general info page"
end

When /^I enter a title for the general info page$/ do
  @british_council.create_general_info.title.set @general_info.title
end

When /^I enter a summary for the general info page$/ do
  @british_council.create_general_info.summary.set @general_info.summary
end

When /^I enter a body for the general info page$/ do
  @british_council.create_general_info.body.native.send_key @general_info.body
end

When /^I submit a general info page without a title$/ do
  step "the create general info page is displayed"
  step "I enter a summary for the general info page"
  step "I enter a body for the general info page"
  step "I save the general info page"
end

When /^I submit a general info page without a body$/ do
  step "the create general info page is displayed"
  step "I enter a title for the general info page"
  step "I enter a summary for the general info page"
  step "I save the general info page"
end

Then /^a "(.*?)" error message is displayed on the create general info page$/ do |error_message|
  @british_council.create_general_info.error_message.text.should include error_message
end

When /^I enter a title with 70 characters for the general info page$/ do
  @title = String.random(70)
  @british_council.create_general_info.title.set @title
end

Then /^a zero characters remaining error message is displayed on the create general info page$/ do
  @british_council.create_general_info.counter_message.text.should include "Content limited to 60 characters, remaining: 0"
  @british_council.create_general_info.title.text.should_not == @title
end