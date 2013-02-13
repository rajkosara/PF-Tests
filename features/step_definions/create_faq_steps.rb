Then /^the create faq page is displayed$/ do
  @british_council.create_faq.should be_displayed
end

When /^I enter a question for the faq page$/ do
  @british_council.create_faq.question.set @faq.question
end

When /^I enter an answer for the faq page$/ do
  @british_council.create_faq.answer.native.send_key @faq.answer
end

When /^I enter a category for the faq page$/ do
  @british_council.create_faq.category.select @faq.category
end

When /^I enter a question with 70 characters for the faq page$/ do
  @title = String.random(70)
  @british_council.create_faq.question.set @title
end

When /^I submit a faq page$/ do
  step "the create faq page is displayed"
  step "I enter a question for the faq page"
  step "I enter an answer for the faq page"
  step "I enter a category for the faq page"
  step "I save the faq page"
end

When /^I save the faq page$/ do
  @british_council.create_faq.save_button.click
end

When /^I submit a faq page without a question$/ do
  step "the create faq page is displayed"
  step "I enter an answer for the faq page"
  step "I enter a category for the faq page"
  step "I save the faq page"
end

When /^I submit a faq page without a category$/ do
  step "the create faq page is displayed"
  step "I enter a question for the faq page"
  step "I enter an answer for the faq page"
  step "I save the faq page"
end

When /^I submit a faq page without an answer$/ do
  step "the create faq page is displayed"
  step "I enter a question for the faq page"
  step "I enter a category for the faq page"
  step "I save the faq page"
end

Then /^a "(.*?)" error message is displayed on the create faq page$/ do |error_message|
  @british_council.create_faq.error_message.text.should include error_message
end

Then /^a zero characters remaining error message is displayed on the create faq page$/ do
  @british_council.create_faq.counter_message.text.should include "Content limited to 60 characters, remaining: 0"
  @british_council.create_faq.question.text.should_not == @title
end

Given /^I create a faq page$/ do
  step "I navigate to the create faq page"
  step "I submit a faq page"
end