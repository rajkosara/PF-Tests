class Model::Page::CreateContactUs < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/contact"
  set_url_matcher /\/en\/node\/add\/contact/

  element :title, "#edit-title-field-en-0-value"
  element :intro_tab, "#node_contact_form_group_contact_intro a.fieldset-title"
  element :summary, "#edit-body-und-0-summary"
  element :intro, "iframe#edit-body-und-0-value_ifr"
  element :call_us_tab, "#node_contact_form_group_call_us a.fieldset-title"
  element :call_us_title, "#edit-field-contact-call-us-title-und-0-value"
  element :phone_number_label, "#edit-field-contact-phone-number-und-0-first"
  element :phone_number, "#edit-field-contact-phone-number-und-0-second"
  element :send_and_enquiry_tab, "#node_contact_form_group_contact_cta a.fieldset-title"
  element :enquiry_form_title, "#edit-field-generic-cta-heading-und-0-value"
  element :strapline, "#edit-field-generic-cta-strapline-und-0-value"
  element :enquiry_button_title, "#edit-field-generic-cta-link-und-0-title"
  element :enquiry_url, "#edit-field-generic-cta-link-und-0-url"
  element :teaching_centre_contact_details_tab, "#node_contact_form_group_contact_details a.fieldset-title"
  element :teaching_centre, "#edit-field-contact-teaching-centre-und-0-target-id"
  element :dropdown, ".reference-autocomplete"
  element :save_button, "[value=Save]"

  elements :teaching_centre, "#edit-field-contact-teaching-centre-und-0-target-id"
end