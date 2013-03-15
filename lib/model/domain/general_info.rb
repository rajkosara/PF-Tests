class Model::Domain::GeneralInfo < Model::Domain::Content
  attr_accessor :internal_link
  attr_accessor :external_link_title
  attr_accessor :external_link_link
  attr_accessor :show_hide_title
  attr_accessor :show_hide_body

  def initialize
    @title = "General Info Title #{Time.current.strftime("%T")} #{String.random(4)}"
    @summary = "General Indo Summary #{Time.current.strftime("%T")} #{String.random(4)}"
    @body = "General info Body #{Time.current.strftime("%T")} #{String.random(4)}"
    @internal_link = ""
    @external_link_title = "General info external link title #{Time.current.strftime("%T")} #{String.random(4)}"
    @external_link_link = "https://www.google.co.uk"
    @alternate_filename = "General info alternate filename #{String.random(6)}"
    @show_hide_title = "General info show hide title #{Time.current.strftime("%T")} #{String.random(4)}"
    @show_hide_body = "General info show hide body #{Time.current.strftime("%T")} #{String.random(4)}"

    def cta
      @general_info ||= Model::Domain::Cta.new
      #this stops a new cta being created each time the course is called
    end
  end
end


