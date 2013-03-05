class Model::Page::CreateGeneralInfo < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/general-info"
  set_url_matcher /\/node\/add\/general-info/

  element :title, "#edit-title-field-en-0-value"
  element :summary, "#edit-body-und-0-summary"
  element :body, "iframe#edit-body-und-0-value_ifr"
  element :internal_link, "#edit-field-generic-internal-link-und-0-target-id"
  element :internal_link_dropdown, ".reference-autocomplete"
  element :error_message, "#console .error"
  element :save_button, "[value*='Save']"
  element :counter_message, "#edit-title-field-en-0-value-counter"

  section :meta_config, Model::Section::MetaConfig, ".vertical-tabs"
  
  sections :external_link, Model::Section::ExternalLink,".link-field-subrow"
end