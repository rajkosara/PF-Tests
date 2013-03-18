class Model::Domain::Event < Model::Domain::Content
  attr_accessor :event_description
  attr_accessor :city
  attr_accessor :start_date
  attr_accessor :end_date
  attr_accessor :internal_link
  attr_accessor :external_link_title
  attr_accessor :external_link_link
  attr_accessor :geolocation
  attr_accessor :venue
  attr_accessor :event_time
  attr_accessor :country
  attr_accessor :address
  attr_accessor :postcode


  def initialize
    @title = "Event Title #{Time.current.strftime("%T")} #{String.random(4)}"
    @summary = "Event Summary #{Time.current.strftime("%T")} #{String.random(4)}"
    @event_description = "Event Event Description \n #{Time.current.strftime("%T")} #{String.random(4)}"
    @city = "London"
    @start_date = 1.days.from_now.strftime("%d/%m/%Y")
    @end_date  =  10.days.from_now.strftime("%d/%m/%Y")
    @internal_link = ""
    @external_link_title = "General info external link title #{Time.current.strftime("%T")} #{String.random(4)}"
    @external_link_link = "https://www.google.co.uk"
    @geolocation = "Spring Gardens, London, UK"
    @venue = "Event #{String.random(4)}"
    @event_time = "#{Time.current.strftime("%T")}"
    @country = "Jamaica"
    @address  = "This place #{String.random(4)}"
    @postcode = "e18 2qe"

    def cta
      @event ||= Model::Domain::Cta.new
    end
  end
end