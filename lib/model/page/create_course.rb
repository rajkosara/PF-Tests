class Model::Page::CreateCourse < SitePrism::Page
  element :course_name , '#CourseName'
  element :course_category,'#CourseCategoryId'
  element :cef_level,'#CefLevelId'
  element :course_session,'#CourseSessionId'
  element :course_duration,'#CourseDuration'
  element :course_desc,'#CourseDescription'
  element :location_name,'#BuildingId'
  element :price_period,'#PricePeriod'
  element :price_desc,'#PriceDescription'
  element :currency_id,'#CurrencyID'
  element :create_button,'input[value="Create"]'

  elements :error_message,'.field-validation-error'



  def initialize
    @title = "Course Title #{Time.current.strftime("%T")} #{String.random(4)}"
    @description = "Course Description #{Time.current.strftime("%T")} #{String.random(4)}"
    @about_course_body = "Course Body #{Time.current.strftime("%T")} #{String.random(4)}"
  end


end