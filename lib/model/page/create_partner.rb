class Model::Page::CreatePartner < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/partner"
  set_url_matcher /\/en\/node\/add\/partner/

  element :partner_name, "#edit-title--2"
  element :summary, "iframe#edit-field-partner-summary-und-0-value_ifr"
  element :image_tab, "#node_partner_form_group_image .fieldset-title"
  element :partner_url, "#edit-field-partner-url-und-0-url"
  element :save_button, "[value=Save]"

  section :meta_config, Model::Section::MetaConfig, ".vertical-tabs"
  section :image_library, Model::Section::AddImageSection, "#node_partner_form_group_image"
end