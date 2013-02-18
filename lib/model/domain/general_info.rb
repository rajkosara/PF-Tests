class Model::Domain::GeneralInfo < Model::Domain::Content
  attr_accessor :internal_link
  attr_accessor :external_link_title
  attr_accessor :external_link_link

  def initialize
    @title = "General Info Title #{Time.current.strftime("%T")} #{String.random(4)}"
    @summary = "General Indo Summary #{Time.current.strftime("%T")} #{String.random(4)}"
    @body = "General info Body #{Time.current.strftime("%T")} #{String.random(4)}"
    @internal_link = ""
    @external_link_title = "General info external link title #{Time.current.strftime("%T")} #{String.random(4)}"
    @external_link_link = "https://www.google.co.uk"
  end
end


