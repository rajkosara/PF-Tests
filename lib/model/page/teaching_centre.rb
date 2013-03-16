class Model::Page::TeachingCentre < SitePrism::Page
  element :status, ".status"
  element :title, "#bc-page-title h1"
  element :address, ".bc-teaching-centre-contact-details address"
  element :phone_number, ".bc-phone-number"
  element :fax_number, ".bc-fax"
  element :email_address, ".bc-email"
  element :body, "#bc-tabs--1 .bc-tab-content p"
  element :calendar_tab, "[data-hash*='2']"
  element :calendar_body, "#bc-tabs--2 .bc-tab-content"
  element :contact_and_location_tab, "[data-hash*='3']"
  element :facilities_tab, "[data-hash*='4']"
  element :facilities_body, "#bc-tabs--4 .bc-tab-content p"
  element :translate_button, ".tabs a[href*='translate']"
  element :edit_button, ".tabs a[href*='edit']"
  element :image, ".bc-full-width-img"
  element :contact_location_image, "#bc-tabs--3 .bc-full-width-img"

  section :contact_and_location_body, Model::Section::ContactAndLocationBody,"#bc-tabs--3 .bc-tab-content"
  section :course, Model::Section::DisplayedCourses, ".bc-boxes-pad"

  sections :cta_box, Model::Section::CtaBox, ".bc-hlight-box"
end