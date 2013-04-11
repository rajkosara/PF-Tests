class Model::Section::SearchBar < SitePrism::Section
  #element :link, "#bc-search-link"
  element :box, "#edit-search-block-form--2"
  element :submit, "#edit-submit"

  def link_click
    evaluate_script(%Q{ jQuery("#bc-search-link").click()})
  end
end