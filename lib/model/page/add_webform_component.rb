class Model::Page::AddWebformComponent < SitePrism::Page
  set_url_matcher /\/en\/node\/\d*\/webform\/components/

  element :status, "div.status"
  element :new_component_box, "#edit-add-name"
  element :mandatory_checkbox, "#edit-add-mandatory"
  element :add_button, "#edit-add-add"
  element :save_button, "#edit-submit"
  element :view_button, "ul.primary li:first-of-type"
end