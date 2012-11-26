When /^I enter he super user username$/ do
  @british_council.login.username.set Helpers::Config['admin_username']
end

When /^I enter the super user password$/ do
  @british_council.login.password.set Helpers::Config['admin_password']
end

When /^I click on login$/ do
  @british_council.login.login_button.click
end

Then /^the admin header is displayed at the top of the page$/ do
  @british_council.login.should have_drupal_admin_header
end

Given /^I am log in as a super user$/ do
  step "I enter he super user username"
  step "I enter the super user password"
  step "I click on login"
end

Given /^I am logged in as a super user$/ do
  step "I navigate to the login page"
  step "I enter he super user username"
  step "I enter the super user password"
  step "I click on login"
end

Given /^the login page is no longer displayed$/ do
  @british_council.should_not have_login
end