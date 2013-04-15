class Model::Page::Ielts < SitePrism::Page
  element :status, ".status"
  element :edit_button, ".tabs a[href*='edit']"
  element :translate_button, ".tabs a[href*='translate']"
  element :title, "#bc-page-title h1"
  #tab one
  element :tab_one_title, "[data-hash='#bc-tabs--1'] a"
  element :tab_one_top_body, "#bc-tabs--1 div.bc-body-content p"

  #tab two
  element :tab_two_title, "[data-hash='#bc-tabs--2'] a"
  element :tab_two_top_body, "#bc-tabs--2 div.bc-body-content p"

  #tab three
  element :tab_three_title, "[data-hash='#bc-tabs--3'] a"
  element :tab_three_top_body, "#bc-tabs--3 div.bc-body-content p"

  #tab four
  element :tab_four_title, "[data-hash='#bc-tabs--4'] a"
  element :tab_four_top_body, "#bc-tabs--4 div.bc-body-content p"
  element :document_name, ".bc-file a"

  section :cta_box, Model::Section::CtaBox, ".bc-hlight-box"
  section :header, Model::Section::Header, "#bc-header-wrapper"
  section :meta_config, Model::Section::MetaConfig, ".vertical-tabs"

  sections :cta_with_image, Model::Section::CtaWithImage, ".bc-card"
end