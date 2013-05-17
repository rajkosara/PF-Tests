Then /^the faq page is created$/ do
  @british_council.faq.status.text.should include "FAQ #{@faq.question} has been created."
end

Then /^the faq display label is displayed correctly$/ do
  @british_council.faq.answer_display_label.text.should include @display_label
end