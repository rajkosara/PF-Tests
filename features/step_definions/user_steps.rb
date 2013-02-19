When /^the add user page is displayed$/ do
  @british_council.add_user.should be_displayed
end

When /^I select the (Site Administrator|Content Author|Content Manager|Content Producer) checkbox$/ do |user_role|
  @user_role = @british_council.add_user.roles.find do |role|
    role.text.to_s.include? user_role
  end
  @user_role.click
end

When /^I submit a new (admin|author|manager|producer) user$/ do |role|
  step "the add user page is displayed"
  @british_council.add_user.username.set @new_user.username
  @british_council.add_user.email.set @new_user.email
  @british_council.add_user.password.set @new_user.password
  @british_council.add_user.confirm_password.set @new_user.password

  case role
  when "admin"
    step "I select the Site Administrator checkbox"
  when "author"
    step "I select the Content Author checkbox"
  when "manager"
    step "I select the Content Manager checkbox"
  when "producer"
    step "I select the Content Producer checkbox"
  end
  
  step "I save the users details"
end

Then /^I save the users details$/ do
  @british_council.add_user.create_new_user_button.click
end

Then /^the user have been successfully created$/ do
  @british_council.add_user.status_message.text.should include "Created a new user account for #{@new_user.username}."
end

Then /^I select to edit the user$/ do
  @british_council.add_user.user_link.click
  @british_council.user.should be_displayed
  @british_council.user.edit_link.click
end

Then /^I edit the users details$/ do
  @new_username = String.random 10
  @british_council.add_user.username.set @new_username
  step "I save the users details"
end

Then /^the users details are successfully edited$/ do
  @british_council.add_user.status_message.text.should include "The changes have been saved."
  @british_council.add_user.username.value.should include @new_username
end