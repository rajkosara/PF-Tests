class Model::Section::DisplayedCourses < SitePrism::Section
  element :listing_title, "h2"
  elements :course_titles, ".bc-no-border"

  elements :courses, "[class*=bc-lk-list]"

  def first_course_title
    course_titles.first
  end

  def second_course_title
    course_titles.last
  end
end