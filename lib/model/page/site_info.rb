class Model::Page::SiteInfo < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/admin/config/system/site-information"
  set_url_matcher /\/en\/admin\/config\/system\/site-information/

  element :legal_info, "iframe#edit-legal-info-value_ifr"
  element :contact_us, "iframe#edit-contact-us-value_ifr"
  element :save_button, "#edit-submit"
end