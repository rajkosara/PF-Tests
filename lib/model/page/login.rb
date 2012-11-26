class Model::Page::Login < SitePrism::Page
  set_url "#{Helpers::Config['british_council_site_root']}/user"
  set_url_matcher /user/

  element :username, '#edit-name'
  element :password, '#edit-pass'
  element :login_button, '#edit-submit'

  section :drupal_admin_header, Model::Section::DrupalAdminHeader, '#admin-menu-wrapper'
end