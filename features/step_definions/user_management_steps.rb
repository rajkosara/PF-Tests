Given /^I am a (admin|author|manager|producer) user$/ do |user_type|
  case user_type
  when "admin"
    @user = Helpers::UserManager.get_admin_user
  when "author"
    @user = Helpers::UserManager.get_author_user
  when "manager"
    @user = Helpers::UserManager.get_manager_user
  when "producer"
    @user = Helpers::UserManager.get_producer_user
  end
end