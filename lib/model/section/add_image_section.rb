class Model::Section::AddImageSection < SitePrism::Section
  element :internal_name, "#edit-field-generic-media-exposed-filters-title"
  element :apply_button, "#edit-field-generic-media-exposed-filters-submit"
  
  elements :select_checkboxes, "input[id*='und-add']"

#  def internal_link
#    evaluate_script(%Q{ jQuery("#{links.first.css_locator}").first()})
#  end

#  def internal_name
#    evaluate_script(%Q{ jQuery("#edit-field-generic-media-exposed-filters-title").first()})
#  end
end