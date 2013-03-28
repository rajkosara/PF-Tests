class Model::Section::TeachingCentreDetails < SitePrism::Section
  element :name, "h3"
  element :address, "address"
  element :phone_number, ".bc-phone-number"
  element :fax_number, ".bc-fax"
  element :email, ".bc-email a"
end