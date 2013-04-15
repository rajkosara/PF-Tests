class Model::Page::CreateWebform < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/webform"
  set_url_matcher /\/en\/node\/add\/webform/

  element :title, "#edit-title-field-en-0-value"
  element :introduction, "iframe#edit-body-und-0-value_ifr"
  element :save_button, "#edit-submit"
end