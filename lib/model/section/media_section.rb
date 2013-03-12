class Model::Section::MediaSection < SitePrism::Section
  element :title, "input[id*='edit-title-field']"
  element :description, "input[id*='description-und-0-value']"
  element :expiration_tab, ".fieldset-title"
  element :expiration_date, "#edit-field-expiration-date-und-0-value-datepicker-popup-0"
  element :expiration_reason, "#edit-field-expiration-reason-und-0-value"
  element :save_button, "#edit-submit"
end