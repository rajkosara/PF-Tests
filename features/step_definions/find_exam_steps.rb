When(/^I Select a country$/) do
  @british_council.find_exam.country_click
end

When(/^When I Click Ok$/) do
  @british_council.find_exam.ok_click
end

When(/^When I Click on Find an Exam$/) do
  @british_council.find_exam.findexamurl.click
end

Then(/^Find an Exam Page should display locations$/) do
  puts @british_council.find_exam.locationone.value
  @british_council.find_exam.should have_locationone
end
