class Model::Section::TeachingCentreDetails < SitePrism::Section
  element :name, "h2 a"
  element :address, ".bc-teaching-centre-contact-details address"
  element :phone_number, ".bc-phone-number"
  element :fax_number, ".bc-fax"
  element :email, ".bc-email a"
end