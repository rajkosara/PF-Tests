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
  element :image_tab, "#node_general_info_form_group_image .fieldset-title"
  element :document_tab, "#node_general_info_form_group_document .fieldset-title"
  element :show_hide_tab, "#node_general_info_form_group_show_hide a"
  element :show_hide_title, "#edit-field-general-info-show-hide-und-0-first"
  element :show_hide_body, "iframe#edit-field-general-info-show-hide-und-0-second-value_ifr"
  element :add_cta_tab, "#node_general_info_form_group_cta a.fieldset-title"

  section :meta_config, Model::Section::MetaConfig, ".vertical-tabs"
  section :image_library, Model::Section::AddImageSection, "#node_general_info_form_group_image"
  section :document_library, Model::Section::AddDocumentSection, "#node_general_info_form_group_document"
  section :add_cta, Model::Section::AddCta, "#node_general_info_form_group_cta"
  
  sections :external_link, Model::Section::ExternalLink,".link-field-subrow"
end