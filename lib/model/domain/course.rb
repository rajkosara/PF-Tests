class Model::Domain::Course < Model::Domain::Content
  attr_accessor :about_course_body
  attr_accessor :tab_two_title
  attr_accessor :tab_two_body
  attr_accessor :tab_three_title
  attr_accessor :tab_three_body
  attr_accessor :calendar_pricing_body
  attr_accessor :levels

  def initialize
    @title = "Course Title #{Time.current.strftime("%T")} #{String.random(4)}"
    @summary = "Course Summary #{Time.current.strftime("%T")} #{String.random(4)}"
    @about_course_body = "Course Body #{Time.current.strftime("%T")} #{String.random(4)}"
    @tab_two_title = "Course Tab Two Title #{String.random(4)}"
    @tab_two_body = "Course Tab Two Body #{Time.current.strftime("%T")} #{String.random(4)}"
    @tab_three_title = "Course Tab Three Title #{String.random(4)}"
    @tab_three_body = "Course Tab Three Body #{Time.current.strftime("%T")} #{String.random(4)}"
    @calendar_pricing_body = "Course Calender and Pricing Body #{Time.current.strftime("%T")} #{String.random(4)}"
    @menu_title = "Course menu link #{String.random(4)}"
    @alternate_filename = "General info alternate filename #{String.random(6)}"
    @levels = "Basic"
  end
end
