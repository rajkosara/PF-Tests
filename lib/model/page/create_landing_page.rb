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

  section :meta_config, Model::Section::MetaConfig, ".vertical-tabs"
end