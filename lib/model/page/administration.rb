class Model::Page::Administration < SitePrism::Page
  set_url "#{Helpers::Config['british_council_site_root']}/en/admin/solas"
  set_url_matcher /\/en\/admin\/solas/
end