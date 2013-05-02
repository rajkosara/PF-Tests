class Model::Page::CreateHomePageConqueror < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/homepage-conqueror"
  set_url_matcher /\/en\/node\/add\/homepage-conqueror/

  elements :promo_tabs, "input[id*='edit-field-home-promo-tabs-und'][type=text]"

  element :list_dropdown, ".reference-autocomplete"
  element :body_content_title, "#edit-title-field-en-0-value"
  element :body_column_one_tab, "#node_homepage_conqueror_form_group_body_col_one .fieldset-title"
  element :body_column_one_summary, "#edit-body-und-0-summary"
  element :body_column_one_body, "iframe#edit-body-und-0-value_ifr"
  element :body_column_two_tab, "#node_homepage_conqueror_form_group_body_col_two .fieldset-title"
  element :body_column_two_body, "iframe#edit-field-home-body-col-two-text-und-0-value_ifr"
  element :body_column_two_link_title, "#edit-field-home-body-col-two-links-und-0-title"
  element :body_column_two_link_url, "#edit-field-home-body-col-two-links-und-0-url"
  element :save_button, '[value=Save]'

  elements :body_column_one_link_title, "#field-home-body-col-one-links-values input[id$='title']"
  elements :body_column_one_link_url, "#field-home-body-col-one-links-values input[id$='url']"
  elements :column_tab, "[id^='node_homepage_conqueror_form_group_col'] .fieldset-title"
  elements :image_promotion_item, "input[id^='edit-field-home-three-col-img-promo'][type=text]"

  section :meta_config, Model::Section::MetaConfig, ".vertical-tabs"

  sections :column, Model::Section::Column, "[id^='node_homepage_conqueror_form_group_col']"
end