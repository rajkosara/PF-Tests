class Model::Page::UserList < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/admin/people"
  set_url_matcher /\/en\/admin\/people/

  element :unahorized_message, "#block-system-main"

  sections :user_record, Model::Section::UserRecord, "tbody tr"
end