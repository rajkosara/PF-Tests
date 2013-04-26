class Model::Page::RegionalSettings < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/admin/config/regional/settings"
  set_url_matcher /\/admin\/config\/regional\/settings/

  element :country, "#edit-site-default-country"
  element :default_time_zone

  def default_country
    country.find("option[selected]")
  end
end