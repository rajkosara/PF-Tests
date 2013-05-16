class Model::Page::Login < SitePrism::Page
  set_url "#{Helpers::Config['pf_site_root']}/account/login"
  set_url_matcher /user/

  element :username, '#UserName'
  element :password, '#Password'
  element :login_button, '#body input[value="Log in"]'
  element :error_message, ".field-validation-error"

  element :user_header, '#bc-user-zone'
  element :logout, "#logoutForm"

end