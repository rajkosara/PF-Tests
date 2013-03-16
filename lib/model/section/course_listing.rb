class Model::Section::CourseListing < SitePrism::Section
  element :title, "#edit-field-tc-courses-title-und-0-value"
  element :first_course_title, "#edit-field-tc-courses-adults-title-und-0-value"
  element :second_course_title, "#edit-field-tc-courses-yl-title-und-0-value"

  elements :courses, "select[id*=edit-field-tc-course-ref]"
end