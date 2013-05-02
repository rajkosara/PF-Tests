class Model::Page::CreateArtsLandingPage < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/arts-landing-page"
  set_url_matcher /\/node\/add\/arts-landing-page/

  element :title, "#edit-title-field-en-0-value"
  element :summary, "#edit-body-und-0-summary"
  element :body, "iframe#edit-body-und-0-value_ifr"
  element :save_button, "input[value*='Save']"
  element :authorized_message, "#block-system-main"
  
  section :meta_config, Model::Section::MetaConfig, ".vertical-tabs"
end