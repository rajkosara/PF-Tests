class Model::Page::CreateLandingPage < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/landing-page"
  set_url_matcher /\/node\/add\/landing-page/

  element :title, "#edit-title-field-en-0-value"
  element :summary, "#edit-body-und-0-summary"
  element :body, "iframe#edit-body-und-0-value_ifr"
  element :save_button, '#edit-submit'
  element :authorized_message, "#block-system-main"
  element :error_message, "#console .error"
  element :counter_message, "#edit-title-field-en-0-value-counter"
  element :list_management, "#edit-field-child-listing-page-managem-und-0-target-id"
  element :list_management_second, "#edit-field-child-listing-page-managem-und-1-target-id"
  element :list_dropdown, ".reference-autocomplete"
  element :add_another_item, "input[name='field_child_listing_page_managem_add_more']"
  element :two_column_checkbox, "label[for*='edit-field-course-list-view-mode-und-landing-col-two-no-img']"

  section :meta_config, Model::Section::MetaConfig, ".vertical-tabs"
end