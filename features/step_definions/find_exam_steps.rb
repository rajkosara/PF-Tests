When(/^I Select a country$/) do
  @british_council.find_exam.country.click
  @british_council.find_exam.okbutton.click
end

When(/^When I Click on Find an Exam$/) do
  puts "step not ready"
end

Then(/^Find an Exam Page should display locations$/) do
  puts "step not ready"
end
