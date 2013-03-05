class Model::Domain::TeachingCentre < Model::Domain::Content
  attr_accessor :address_one
  attr_accessor :address_two
  attr_accessor :post_code
  attr_accessor :city
  attr_accessor :state
  attr_accessor :telephone_number
  attr_accessor :fax_number
  attr_accessor :email_address
  attr_accessor :calendar_body
  attr_accessor :contact_location_body
  attr_accessor :facilities_body


    def initialize
    @title = "Teaching Centre Title #{Time.current.strftime("%T")} #{String.random(4)}"
    @summary = "Teaching Centre Summary #{Time.current.strftime("%T")} #{String.random(4)}"
    @body = "Teaching Centre Body #{Time.current.strftime("%T")} #{String.random(4)}"
    @address_one = "Teaching Centre address one #{Time.current.strftime("%T")} #{String.random(4)}"
    @address_two = "Teaching Centre address two #{Time.current.strftime("%T")} #{String.random(4)}"
    @post_code = "TC#{String.random(5)}"
    @city = "TCity #{String.random(5)}"
    @state = "TState #{String.random(5)}"
    @telephone_number = "00 #{String.random_numbers(5)}"
    @fax_number = "11 #{String.random_numbers(5)}"
    @email_address = "#{String.random(5)}@example.com"
    @calendar_body = "Teaching Centre calender body #{Time.current.strftime("%T")} #{String.random(4)}"
    @contact_location_body = "Teaching Centre contact location body #{Time.current.strftime("%T")} #{String.random(4)}"
    @facilities_body = "Teaching Centre facilities body #{Time.current.strftime("%T")} #{String.random(4)}"
    @alternate_filename = "Teaching Centre alternate filename #{String.random(6)}"
  end
end