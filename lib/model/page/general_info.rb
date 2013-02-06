class Model::Page::GeneralInfo < SitePrism::Page
  element :status, ".status"
  element :external_link, ".field-name-field-generic-external-link .field-item a"
  element :internal_link, ".field-name-body .field-item"
end