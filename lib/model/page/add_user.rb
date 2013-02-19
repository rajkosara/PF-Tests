class Model::Page::AddUser < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/admin/people/create"
  set_url_matcher /\/en\/admin\/people\/create/

  element :username, "#edit-name"
  element :email, "#edit-mail"
  element :password, "#edit-pass-pass1"
  element :confirm_password, "#edit-pass-pass2"
  element :create_new_user_button, "#edit-submit"
  element :status_message, ".messages"
  element :error_message, ".messages .element-invisible"
  element :user_link, ".messages em.placeholder"
  element :unahorized_message, "#block-system-main"

  elements :roles, "#edit-roles .form-type-checkbox label"
end