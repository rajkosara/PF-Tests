class Model::Domain::ContactUs < Model::Domain::Content
  attr_accessor :about_course_body
  attr_accessor :intro
  attr_accessor :call_us_title
  attr_accessor :phone_number_label
  attr_accessor :phone_number
  attr_accessor :enquiry_form_title
  attr_accessor :enquiry_strapline
  attr_accessor :enquiry_button_title
  attr_accessor :enquiry_button_url
  attr_accessor :teaching_centre_heading



    def initialize
    @title = "Contact Us Title #{Time.current.strftime("%T")} #{String.random(4)}"
    @summary = "Contact Us summary #{Time.current.strftime("%T")} #{String.random(4)}"
    @intro = "Contact Us Intro #{Time.current.strftime("%T")} #{String.random(4)}"
    @call_us_title = "Contact Us Call Us title #{Time.current.strftime("%T")} #{String.random(4)}"
    @phone_number_label = "Contact Us phone number label #{String.random(4)}"
    @phone_number = "#{String.random_numbers(7)}"
    @enquiry_form_title = "Contact Us form title #{String.random(4)}"
    @enquiry_strapline = "Contact Us strapline #{String.random(4)}"
    @enquiry_button_title = "Enquiry button #{String.random(4)}"
    @enquiry_button_url = "https://www.google.co.uk/"
    @teaching_centre_heading = "Contact Us teaching centre heading #{Time.current.strftime("%T")} #{String.random(4)}"
  end 
end