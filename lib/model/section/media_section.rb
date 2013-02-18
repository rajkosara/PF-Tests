class Model::Section::MediaSection < SitePrism::Section
  element :title, "#edit-title-field-en-0-value"
  element :description, "#edit-field-short-description-und-0-value"
  element :expiration_date, "#edit-field-expiration-date-und-0-value-datepicker-popup-0"
  element :expiration_reason, "#edit-field-expiration-reason-und-0-value"
  element :save_button, "#edit-submit"
end