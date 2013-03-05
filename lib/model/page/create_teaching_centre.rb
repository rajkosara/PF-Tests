class Model::Page::CreateTeachingCentre < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/teaching-centre"
  set_url_matcher /\/node\/add\/teaching-centre/

  element :title, "#edit-title-field-en-0-value"
  element :summary, "#edit-body-und-0-summary"
  element :body, "iframe#edit-body-und-0-value_ifr"
  element :address_one, "#edit-field-teaching-centre-address-und-0-thoroughfare"
  element :address_two, "#edit-field-teaching-centre-address-und-0-premise"
  element :post_code, ".postal-code"
  element :city, ".locality"
  element :state, ".state"
  element :telephone_number, "#edit-field-teaching-centre-phone-no-und-0-value"
  element :fax_number, "#edit-field-teaching-centre-fax-no-und-0-value"
  element :email_address, "#edit-field-teaching-centre-email-und-0-email"
  element :calendar_tab, "li.horizontal-tab-button-1"
  element :calendar_body, "iframe#edit-field-teaching-centre-tab2-body-und-0-value_ifr"
  element :contact_and_location_tab, "li.horizontal-tab-button-2"
  element :contact_and_location_body, "iframe#edit-field-teaching-centre-tab3-body-und-0-value_ifr"
  element :facilities_tab, "li.horizontal-tab-button-3"
  element :facilities_body, "iframe#edit-field-teaching-centre-tab4-body-und-0-value_ifr"
  element :error_message, "#console .error"
  element :save_button, '#edit-submit'
  element :counter_message, "#edit-title-field-en-0-value-counter"

  section :meta_config, Model::Section::MetaConfig, ".vertical-tabs"
end