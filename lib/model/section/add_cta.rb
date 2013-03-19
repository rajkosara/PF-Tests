class Model::Section::AddCta < SitePrism::Section
  element :title, "#edit-field-generic-cta-link-und-0-title"
  element :url, "#edit-field-generic-cta-link-und-0-url"
  element :strapline, "#edit-field-generic-cta-strapline-und-0-value"
  element :header, "#edit-field-generic-cta-heading-und-0-value"
  element :supporting_text, "iframe#edit-field-generic-cta-summary-und-0-value_ifr"
  element :internal_link_search_button, ".linkit-field-button"
  element :image_tab, "fieldset[id*='image'] a.fieldset-title"

  sections :image_library, Model::Section::AddImageSection, "fieldset[id*='image']"
end