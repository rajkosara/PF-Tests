class Model::Section::AddLevel < SitePrism::Section
  element :levels_title, "input[id*=edit-field-course-levels-und][type=text]"
  element :levels_description, "iframe[id*=edit-field-course-levels-und]"
end