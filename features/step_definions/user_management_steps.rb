Given /^I am a (admin|ExamAdmin|CourseAdmin) user$/ do |user_type|
  case user_type
  when "admin"
    @user = Helpers::UserManager.get_admin_user
  when "ExamAdmin"
    @user = Helpers::UserManager.get_examadmin_user
  when "CourseAdmin"
    @user = Helpers::UserManager.get_courseadmin_user
  when "manager"
    @user = Helpers::UserManager.get_manager_user
  end
end

When /^I create a new user$/ do
  @new_user = Helpers::UserManager.create_user
end