Then /^the teaching centre page is created$/ do
  @british_council.teaching_centre.status.text.should include "Teaching centre #{@teaching_centre.title} has been created."
end

Then(/^the teaching centre page details are displayed correctly$/) do
  step "the teaching centre page is created"
end