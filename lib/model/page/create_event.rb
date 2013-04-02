class Model::Page::CreateEvent < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/event"
  set_url_matcher /\/node\/add\/event/

  element :title, "#edit-title-field-en-0-value"
  element :summary, "#edit-body-und-0-summary"
  element :event_description, "iframe#edit-body-und-0-value_ifr"
  element :city, "[id*=edit-field-event-address-und-0-locality]"
  element :start_date, "#edit-field-event-date-und-0-value-datepicker-popup-0"
  element :end_date, "#edit-field-event-date-und-0-value2-datepicker-popup-0"
  element :internal_ref, "#edit-field-job-internal-ref-code-und-0-value"
  element :geolocation, "#edit-field-generic-geolocation-map-und-0-address-field"
  element :get_location_button, "[id*=geolocation-address-geocode]"
  element :save_button, "input[value*='Save']"
  element :error_message, "#console .error"
  element :counter_message, "#edit-title-field-en-0-value-counter"
  element :date_and_venue_tab, "#node_event_form_group_event_meta a.fieldset-title"
  element :venue, "#edit-field-event-location-name-und-0-value"
  element :event_time, "#edit-field-event-time-und-0-value"
  element :country, "#edit-field-event-address-und-0-country"
  element :address_one, "[id*=edit-field-event-address-und-0-thoroughfare]"
  element :address_two, "[id*=edit-field-event-address-und-0-premise]"
  element :postcode, "[id*=edit-field-event-address-und-0-postal-code]"
  element :image_tab, "#node_event_form_group_event_image a.fieldset-title"
  element :add_cta_tab, "#node_event_form_group_event_cta a.fieldset-title"
  element :partner_tab, "#node_event_form_group_partners a.fieldset-title"

  elements :long_lat, "span.geolocation-lat-item-value"

  section :event_partner, Model::Section::EventPartner, "#node_event_form_group_partners"
  section :meta_config, Model::Section::MetaConfig, ".vertical-tabs"
  section :image_library, Model::Section::AddImageSection, "#node_event_form_group_event_image"
  section :add_cta, Model::Section::AddCta, "#node_event_form_group_event_cta"


  sections :external_link, Model::Section::ExternalLink,"#field-generic-external-link-values .link-field-subrow"

  def latitude
    long_lat.first
  end

  def longitude
    long_lat.last
  end

end