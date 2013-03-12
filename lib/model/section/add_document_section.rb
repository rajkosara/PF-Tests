class Model::Section::AddDocumentSection < SitePrism::Section
  element :internal_name, "#edit-field-generic-media-exposed-filters-title"
  element :apply_button, "#edit-field-generic-media-exposed-filters-submit"

  elements :select_checkboxes, "input[id*='edit-field-generic-media-doc-und']"
end