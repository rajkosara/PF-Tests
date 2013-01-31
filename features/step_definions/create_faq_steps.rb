#this step should only be used as part of other steps and not in scenarios
Given /^I create a faq object$/ do
  @faq = Model::Domain::Content.new
  @faq.set_content_type :faq
end

Then /^the create faq page is displayed$/ do
  @british_council.create_faq.should be_displayed
end

When /^I submit a faq page$/ do
    step "the create faq page is displayed"
  @british_council.create_faq.question.set @faq.question
  @british_council.create_faq.answer.native.send_key @faq.answer
  @british_council.create_faq.category.select @faq.category
  step "I save the faq page"
end

When /^I save the faq page$/ do
  @british_council.create_faq.save_button.click
end