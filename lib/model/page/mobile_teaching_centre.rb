class Model::Page::MobileTeachingCentre < SitePrism::Page
  element :status, ".status"
  element :title, "#bc-page-title h1"
  element :address, ".bc-teaching-centre-contact-details address"
  element :phone_number, ".bc-phone-number"
  element :fax_number, ".bc-fax"
  element :email_address, ".bc-email"
  element :body, "#bc-tabs--1 .bc-tab-content p"
  element :calendar_tab, '#bc-tabs--2 .bc-tab-title'
  element :calendar_body, "#bc-tabs--2 .bc-tab-content"
  element :contact_and_location_tab, '#bc-tabs--3 .bc-tab-title'
  element :contact_and_location_body, "#bc-tabs--3 .bc-tab-content"
  element :facilities_tab, '#bc-tabs--4 .bc-tab-title'
  element :facilities_body, "#bc-tabs--4 .bc-tab-content"
end