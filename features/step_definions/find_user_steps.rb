Given(/^Iam on the Find User Page$/) do
  step "Iam on the Home Page"
  step "I click on Add/Edit IPF user link"
end

When(/^I Enter username$/) do
  @british_council.find_user.user_name.set "raj"
end

When(/^I Enter username,firstname,lastname$/) do
  @british_council.find_user.user_name.set "abcde"
  @british_council.find_user.first_name.set "raj"
  @british_council.find_user.last_name.set "ko"

end

When(/^I Enter Invalid username,firstname,lastname$/) do
  @british_council.find_user.user_name.set "abcde"
  @british_council.find_user.first_name.set "abcde"
  @british_council.find_user.last_name.set "abcde"

end

When(/^I click on Find User button$/) do
  @british_council.find_user.find_user.click
  wait_for_ajax
end

Then(/^Search results should display$/) do
  puts "Pending"
end

Then(/^Search results should not display$/) do
  @british_council.find_user.no_records.text.should== "No data available!"
end

When(/^I click on Clear button$/) do
  @british_council.find_user.clear_user.click
end

Then(/^Search Fields text should be empty$/) do
  @british_council.find_user.user_name.text.should==""
  @british_council.find_user.first_name.text.should==""
  @british_council.find_user.last_name.text.should==""
end

When(/^I Perform Search$/) do
  step "I Enter username"
  step "I click on Find User button"
  step "Search results should display"
end

When(/^I Perform Empty Search$/) do
  step "I click on Find User button"
  wait_for_ajax
end

Then(/^Page should not be disabled/) do
    step "I click on Clear button"
end

And (/^I Click on Add Record$/) do
  @british_council.find_user.add_record.first.click
  sleep 3
end

And (/^I Click on Edit Record$/) do
  @british_council.find_user.edit_record.first.click
  sleep 3
end

Then(/^Page title should be Create User Account$/) do
  @british_council.find_user.title.should include "Create User Account"
end

Then(/^Page title should be Edit User Details$/) do
  @british_council.find_user.title.should include "Edit User Details"
end