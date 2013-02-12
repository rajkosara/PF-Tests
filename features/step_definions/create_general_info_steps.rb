Then /^the create general info page is displayed$/ do
  @british_council.create_general_info.should be_displayed
end

Then /^the create general info page is not displayed$/ do
  Timeout.timeout(30) { sleep(0.1) while @british_council.create_general_info.displayed?}
  @british_council.create_general_info.should_not be_displayed
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

When /^I enter an external link for the general info page$/ do
  @british_council.create_general_info.external_link.first.title.set @general_info.external_link_title
  @british_council.create_general_info.external_link.first.link.set @general_info.external_link_link
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

When /^I submit a general info page with an external link$/ do
  step "the create general info page is displayed"
  step "I enter a title for the general info page"
  step "I enter a summary for the general info page"
  step "I enter a body for the general info page"
  step "I enter an external link for the general info page"
  step "I save the general info page"
end

When /^I submit a general info page with an internal link$/ do
  step "the create general info page is displayed"
  step "I enter a title for the general info page"
  step "I enter a summary for the general info page"
  step "I enter a body for the general info page"
  step "I enter an internal link for the general info page"
  step "I save the general info page"
end

When /^I enter an internal link for the general info page$/ do
  @british_council.create_general_info.internal_link.set @general_info_title
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

Given /^I create a general info page$/ do
  step "I navigate to the create general info page"
  step "I submit a general info page"
  @general_info_title = @general_info.title
end

When /^I enter a title containing some punctuation marks for a general info page$/ do
  @british_council.create_general_info.title.set 'Title with punctuation marks " _ : | {} & @ /'
end

When /^I enter a title of "(.*?)" for the general info page$/ do |title|
  @british_council.create_general_info.title.set title
end

When /^I enter a title containing some punctuation marks$/ do
  @british_council.create_general_info.title.set 'Title with punctuation marks " _ : | {} & @ /'
end