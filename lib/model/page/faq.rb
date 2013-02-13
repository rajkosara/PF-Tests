class Model::Page::Faq < SitePrism::Page
  element :status, ".status"
  element :answer_display_label, ".field-name-field-faq-answer div.field-label"
end