class Model::Page::ContactUs < SitePrism::Page
  element :status, ".status"
  element :title, "#bc-page-title h1"
  element :intro, ".bc-body-content"
  element :call_us_title, ".bc-col1 h2:first-of-type"
  element :phone_number_label, ".bc-box dt"
  element :phone_number, ".bc-box dd"
  element :enquiry_form_title, ".bc-col1 h2:nth-of-type(2)"
  element :strapline, ".bc-cta-box [class*='first']"
  element :contact_us_button, ".bc-link-button"
  element :contact_us_block, "#bc-page-title aside"

  elements :teaching_centre_title, ".bc-tc-listing h3"
  sections :teaching_centre_details, Model::Section::TeachingCentreDetails, ".bc-teaching-centre-contact-details"
end