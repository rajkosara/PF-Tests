When /^I enter the (admin|author|manager|producer) user username$/ do |user_type|
  @british_council.login.username.set Helpers::Config["#{user_type}_username"]
end

When /^I enter the (admin|author|manager|producer) user password$/ do |user_type|
  @british_council.login.password.set Helpers::Config["#{user_type}_password"]
end

When /^I click on login$/ do
  @british_council.login.login_button.click
end

Then /^the admin header is displayed at the top of the page$/ do
  @british_council.login.should have_drupal_admin_header
end

Then /^the admin header displays the (admin|author|manager|producer) username$/ do |user_type|
  @british_council.login.drupal_admin_header.username.text.should include Helpers::Config["#{user_type}_username"]
  @british_council.login.drupal_admin_header.username[:href].should include "#{Helpers::Config["#{user_type}_username"].gsub(".", "")}"
end

Given /^I am log in as (?:an|a|the) (admin|author|manager|producer) user$/ do |user_type|
  step "I enter the #{user_type} user username"
  step "I enter the #{user_type} user password"
  step "I click on login"
end

Given /^I am logged in as (?:an|a|the) (admin|author|manager|producer) user$/ do |user_type|
  step "I navigate to the login page"
  step "I enter the #{user_type} user username"
  step "I enter the #{user_type} user password"
  step "I click on login"
end

Given /^the login page is no longer displayed$/ do
  @british_council.should_not have_login
end

When /^I log out$/ do
  @british_council.login.drupal_admin_header.log_out.click
end

Then /^the admin user is logged out$/ do
  @british_council.login.should_not have_drupal_admin_header
end