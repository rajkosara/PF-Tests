class Model::Page::CreateArtsLandingPage < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/arts-landing-page"
  set_url_matcher /\/node\/add\/arts-landing-page/

  element :title, "#edit-title-field-en-0-value"
  element :summary, "#edit-body-und-0-summary"
  element :body, "iframe#edit-body-und-0-value_ifr"
  element :save_button, "input[value*='Save']"
  element :authorized_message, "#block-system-main"
  element :image_tab, "#node_arts_landing_page_form_group_summary_image .fieldset-title"
  element :body_tab, "#node_arts_landing_page_form_group_arts_show_hide .fieldset-title"
  element :show_hide_title, "#edit-field-arts-show-hide-title-und-0-value"
  element :list_management, "#node_arts_landing_page_form_group_arts_list_management .fieldset-title"
  element :promo_management_tab, "#node_arts_landing_page_form_group_arts_promos .fieldset-title"

  elements :list_items, "#node_arts_landing_page_form_group_arts_list_management input[id*=edit-field-arts-list-item][type=text]"
  elements :promo, "[type=text][id*='edit-field-generic-sidebar-promos']"

  
  section :meta_config, Model::Section::MetaConfig, ".vertical-tabs"
  section :image_library, Model::Section::AddImageSection, "#node_arts_landing_page_form_group_summary_image"
end