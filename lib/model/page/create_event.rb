class Model::Page::CreateEvent < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/event"
  set_url_matcher /\/node\/add\/event/

  element :title, "#edit-title-field-en-0-value"
  element :summary, "#edit-body-und-0-summary"
  element :event_description, "iframe#edit-body-und-0-value_ifr"
  element :city, "#edit-field-generic-location-und-0-value"
  element :start_date, "#edit-field-event-start-date-und-0-value-datepicker-popup-0"
  element :end_date, "#edit-field-event-end-date-und-0-value-datepicker-popup-0"
  element :internal_ref, "#edit-field-job-internal-ref-code-und-0-value"
  element :geolocation, "#edit-field-generic-geolocation-map-und-0-address-field"
  element :get_location_button, "#geolocation-address-geocode-32-0"
  element :save_button, "input[value*='Save']"
  element :error_message, "#console .error"
  element :counter_message, "#edit-title-field-en-0-value-counter"
  
  section :meta_config, Model::Section::MetaConfig, ".vertical-tabs"

  sections :external_link, Model::Section::ExternalLink,".link-field-subrow"
end