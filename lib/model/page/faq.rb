class Model::Page::Faq < SitePrism::Page
  element :status, ".status"
  element :answer_display_label, ".bc-col1 section h2:nth-of-type(2)"
end