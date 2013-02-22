class Model::Section::UrlPathSettings < SitePrism::Section
  element :generate_auto_url_checkbox, ".form-item-path-pathauto #edit-path-pathauto"
  element :generate_auto_url_label, ".form-item-path-pathauto .option"
  element :filename, "#edit-path-slug"
end