class Model::Section::AddDocumentSection < SitePrism::Section
  element :internal_name, "#edit-field-generic-media-doc-exposed-filters-title"
  element :apply_button, "#edit-field-generic-media-doc-exposed-filters-submit"

  elements :select_checkboxes, "input[id*='edit-field-generic-media-doc-und']"
  elements :table_internal_name, "tbody .views-field-title"
end