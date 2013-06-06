Given(/^I am  on the add user page$/) do
  step "Iam on the Find User Page"
  step "I Enter lastname as bak"
  step "I click on Find User button"
  scroll_to_end_of_page
  step "I Click on Add Record"
  @user_firstname = @british_council.add_user.first_name.value
  @user_lastname = @british_council.add_user.last_name.value
  @user_name=@british_council.add_user.user_name.value
end

When /^the add user page is displayed$/ do
  @british_council.add_user.should be_displayed
end

When /^I select the (Site Administrator|Content Author|Content Manager|Content Producer) checkbox$/ do |user_role|
  @user_role = @british_council.add_user.roles.find do |role|
    role.text.to_s.include? user_role
  end
  @user_role.click
end

When /^I Save a new (course administrator|exam administrator|manager) user$/ do |user_role|
  #Timeout.timeout(30) { sleep(0.1) until @british_council.add_user.user_region.visible?}
  @british_council.add_user.user_region.select "United Kingdom"
  wait_for_ajax
  @british_council.add_user.country_england.click
  scroll_to_end_of_page
  @british_council.add_user.btn_next.click
  step "I select the #{user_role} checkbox"
  step "I Click Create Button"
end

Then /^the user has been successfully created$/ do
  wait_for_ajax
  @british_council.add_user.confirm_msg.text.should include "The user has been added successfully for #{@user_name}"
end

Then /^I select the (course administrator|exam administrator|manager) checkbox$/ do |check_role|
  case check_role
  when "course administrator"
    #if @british_council.add_user.role_label == "Course Administrator"
    @british_council.add_user.course_admin.click
    #else
      
    #end
  when "exam administrator"
    @british_council.add_user.exam_admin.click
  when "manager"
    @british_council.add_user.manager.click
  end
end

Then /^I Click Create Button$/ do
  @british_council.add_user.btn_create.click
end

When /^I Search for (System Administrator|Exam Administrator|Course Administrator) Record$/ do |role|
    case role
    when "System Administrator"
      step "I Enter username as rajkosara"
    when "Exam Administrator"
      step "I Enter username as adutest2"
    when "Course Administrator"
      step "I Enter username as adutest1"
    end
      step "I click on Find User button"
      scroll_to_end_of_page
 
end

Then(/^Edit Record option should be (Available|Not Available)$/) do |status|
  case status
  when "Available"
    @british_council.find_user.should have_edit_record
  when "Not Available"
    @british_council.find_user.should_not have_edit_record
  end
  
end

And /^the user should appear under Edit List$/ do
  @british_council.home_page.backto_homepage.click
  step "I click on Add/Edit IPF user link"
  step "I Enter firstname as #{@user_firstname}"
  step "I Enter lastname as #{@user_lastname}"
  step "I click on Find User button"
  scroll_to_end_of_page
  step "Edit Record option should be Available"
end