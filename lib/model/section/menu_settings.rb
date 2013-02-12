class Model::Section::MenuSettings < SitePrism::Section
  element :enable_menu, ".option"
  element :title, "#edit-menu-link-title"
  element :parent_menu, "#edit-menu-parent"

  def parent_menu_options_text
    evaluate_script(%Q{ jQuery("#{parent_menu.css_locator}").text()})
  end
end