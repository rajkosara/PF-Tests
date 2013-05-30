When /^I enter the (admin|ExamAdmin|CourseAdmin|manager) user username$/ do |user_type|
  step "I am a #{user_type} user"
  @british_council.login.username.set @user.username
end

When /^I enter the (admin|ExamAdmin|CourseAdmin|manager) user password$/ do |user_type|
  @british_council.login.password.set @user.password
end

When /^I click on login$/ do
  scroll_down_a_little
  @british_council.login.login_button.click
end

Then /^the Page header displays the (admin|ExamAdmin|CourseAdmin|manager) username$/ do |user_type|
  #@british_council.login.login_header.username.text.should include Helpers::Config["#{user_type}_username"]
  @british_council.login.user_header.text.should include Helpers::Config["#{user_type}_username"]
  #@british_council.login.login_header.username[:href].should include "#{Helpers::Config["#{user_type}_username"].gsub(".", "")}"
end

Given /^I am log in as (?:an|a|the) (admin|ExamAdmin|CourseAdmin|manager) user$/ do |user_type|
  step "I enter the #{user_type} user username"
  step "I enter the #{user_type} user password"
  step "I click on login"
end

Given /^I am logged in as (?:an|a|the) (admin|ExamAdmin|CourseAdmin|manager) user$/ do |user_type|
  step "I navigate to the login page"
  step "I enter the #{user_type} user username"
  step "I enter the #{user_type} user password"
  step "I click on login"
end

Given /^the login page is no longer displayed$/ do
  @british_council.should_not have_login
end

When /^I log out$/ do
  @british_council.login.logout.click
end

Then /^the admin user is logged out$/ do
  @british_council.login.should have_username
end

When /^I enter the invalid user username$/ do
  @british_council.login.username.set "invalid_user"
end

When /^I enter the invalid user password$/ do
  @british_council.login.password.set "invalid_user"
end


Then /^the Authentication error message is displayed$/ do
  @british_council.login.error_message.text.should include "Authentication did not succeed. Check user name and password."
end