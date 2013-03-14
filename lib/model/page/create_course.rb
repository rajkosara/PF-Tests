class Model::Page::CreateCourse < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/course"
  set_url_matcher /\/node\/add\/course/

  #top of page
  element :title, "#edit-title-field-en-0-value"
  element :summary, "#edit-body-und-0-summary"
  #about course tab
  element :about_course_body, "iframe#edit-body-und-0-value_ifr"

  #second tab
  element :tab_two, ".horizontal-tab-button-1 a[href]"
  element :tab_two_title, "#edit-field-course-tab-two-title-und-0-value"
  element :tab_two_body, "iframe#edit-field-course-tab-two-body-und-0-value_ifr"

  #third tab
  element :tab_three, ".horizontal-tab-button-2 a[href]"
  element :tab_three_title, "#edit-field-course-tab-three-title-und-0-value"
  element :tab_three_body, "iframe#edit-field-course-tab-three-body-und-0-value_ifr"

  #calendat and pricing tab
  element :timetable_tab, ".horizontal-tab-button-3 a[href]"
  element :timetable_title, "#edit-field-course-timetable-title-und-0-value"
  element :timetable_intro, "iframe#edit-field-course-cal-pricing-body-und-0-value_ifr"

  #levels
  element :levels_tab, ".horizontal-tab-button-4 a[href]"
  element :levels_title, "#edit-field-course-levels-und-0-first"
  element :levels_description, "iframe#edit-field-course-levels-und-0-second-value_ifr"

  #cta_tab
  element :add_cta_tab, "#node_course_form_group_cta a.fieldset-title"

  element :error_message, "#console .error"
  element :save_button, "input[value*='Save']"
  element :counter_message, "#edit-title-field-en-0-value-counter"

  section :add_cta, Model::Section::AddCta, "#node_course_form_group_cta"
  section :meta_config, Model::Section::MetaConfig, ".vertical-tabs"
  section :internal_link_search, Model::Section::InternalLinkSearch, "div#linkit-modal"
end