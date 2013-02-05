class Model::Page::CreateFaq< SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/faq"
  set_url_matcher /\/node\/add\/faq/

  element :question, '#edit-title-field-en-0-value'
  element :answer, 'iframe#edit-field-faq-answer-und-0-value_ifr'
  element :category, '#edit-field-faq-category-und'
  element :save_button, '#edit-submit'
  element :error_message, "#console .error"
  element :counter_message, "#edit-title-field-en-0-value-counter"
end