class Model::Domain::Promotion < Model::Domain::Content
  attr_accessor :destination
  attr_accessor :button_text

  def initialize
    @title = "Promotion Title #{Time.current.strftime("%T")} #{String.random(4)}"
    @summary = "Promotion Summary #{Time.current.strftime("%T")} #{String.random(4)}"
    @destination = "http://www.google.co.uk/"
    @button_text = "Promotion Button Text #{Time.current.strftime("%T")} #{String.random(4)}"
  end
end