class Model::Page::Webform < SitePrism::Page
  element :title, "#bc-page-title h1"
  element :intro, ".bc-body-content p"
  element :text_box_label, "[for^='edit-submitted']"
  element :text_box, "input[id^='edit-submitted']"
  element :submit_button, "input#edit-submit"
  element :confirmation, "div.webform-confirmation"
end