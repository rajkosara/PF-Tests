Then /^the faq page is created$/ do
  @british_council.faq.status.text.should include "FAQ #{@faq.question} has been created."
end