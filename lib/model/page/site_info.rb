class Model::Page::SiteInfo < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/admin/config/system/site-information"
  set_url_matcher /\/en\/admin\/config\/system\/site-information/

  element :legal_info, "#edit-legal-info"
  element :save_button, "#edit-submit"
end