class Model::Page::Event < SitePrism::Page
  element :status, ".status"
  element :image, ".bc-full-width-img"
  element :title, "#bc-page-title h1"
  element :event_date, ".bc-block-date"
  element :description, ".bc-body-content"
  element :address_one, ".bc-location .street-block .thoroughfare"
  element :address_two, ".bc-location .street-block .premise"
  element :city, ".bc-location .addressfield-container-inline .locality"
  element :postcode, ".bc-location .addressfield-container-inline .postal-code"
  element :country, ".bc-location .country"
  element :map, ".bc-location div[id*='geolocation-googlemaps']"
  element :partner_header, ".bc-logos h2"
  element :partner_image, ".bc-logos img"
  element :translate_button, ".tabs a[href*='translate']"


  section :cta_box, Model::Section::CtaBox, ".bc-hlight-box"
end