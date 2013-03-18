class Model::Page::CreateIelts < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/ielts"
  set_url_matcher /\/node\/add\/ielts/

  element :title, "input[id*='edit-title-field']"
  #tab_one
  element :tab_one_title, "#edit-field-ielts-tab-one-title-und-0-value"
  element :tab_one_summary, "#edit-body-und-0-summary"
  element :tab_one_top_body, "iframe#edit-body-und-0-value_ifr"
  element :tab_one_links_title, "iframe#edit-field-ielts-tabs1-links-title-und-0-value_ifr"
  element :tab_one_first_related_links, "#edit-field-ielts-tab1-related-links-und-0-target-id"
  element :tab_one_bottom_body, "#edit-field-ielts-tab1-bottom-body-und-0-value_ifr"

  #tab two
  element :tab_two, ".horizontal-tab-button-1 a[href]"
  element :tab_two_title, "#edit-field-ielts-tab-two-title-und-0-value"
  element :tab_two_top_body, "iframe#edit-field-ielts-tab2-top-body-und-0-value_ifr"
  element :tab_two_bottom_body, "iframe#edit-field-ielts-tab2-bottom-body-und-0-value_ifr"

  #tab three
  element :tab_three, ".horizontal-tab-button-2 a[href]"
  element :tab_three_title, "#edit-field-ielts-tab-three-title-und-0-value"
  element :tab_three_top_body, "iframe#edit-field-ielts-tab3-top-body-und-0-value_ifr"
  element :tab_three_bottom_body, "iframe#edit-field-ielts-tab3-bottom-body-und-0-value_ifr"
  
  #tab four
  element :tab_four, ".horizontal-tab-button-3 a[href]"
  element :tab_four_title, "#edit-field-ielts-tab-four-title-und-0-value"
  element :tab_four_top_body, "iframe#edit-field-ielts-tab4-top-body-und-0-value_ifr"
  element :tab_four_bottom_body, "iframe#edit-field-ielts-tab4-bottom-body-und-0-value_ifr"

  element :links_title, "#edit-field-ielts-related-links-title-und-0-value"
  element :related_links, "#edit-field-generic-internal-link-und-0-target-id"
  element :save_button, "[value='Save']"

  section :meta_config, Model::Section::MetaConfig, ".vertical-tabs"
end