class Model::Page::CreateCourse < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/course"
  set_url_matcher /\/node\/add\/course/

  element :title, "#edit-title-field-en-0-value"
  element :summary, "#edit-body-und-0-summary"
  element :about_course_body, "iframe#edit-body-und-0-value_ifr"

  element :error_message, "#console .error"
  element :save_button, '#edit-submit'
  element :counter_message, "#edit-title-field-en-0-value-counter"

  section :meta_config, Model::Section::MetaConfig, ".vertical-tabs"
end