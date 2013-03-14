class Model::Section::AddCta < SitePrism::Section
  element :title, "#edit-field-generic-cta-link-und-0-title"
  element :url, "#edit-field-generic-cta-link-und-0-url"
  element :strapline, "#edit-field-generic-cta-strapline-und-0-value"
  element :header, "#edit-field-generic-cta-heading-und-0-value"
  element :supporting_text, "iframe#edit-field-generic-cta-summary-und-0-value_ifr"
end