class Model::Domain::Cta
  attr_accessor :title
  attr_accessor :url
  attr_accessor :strapline
  attr_accessor :header
  attr_accessor :supporting_text

  def initialize
    @title = "CTA title #{Time.current.strftime("%T")} #{String.random(4)}"
    @url = "http://www.google.co.uk/"
    @strapline = "CTA Strapline #{Time.current.strftime("%T")} #{String.random(4)}"
    @header = "CTA Header #{Time.current.strftime("%T")} #{String.random(4)}"
    @supporting_text = "CTA Supporting Text #{Time.current.strftime("%T")} #{String.random(4)}"
  end

#   Need to refactor image to get this to work
#  def image
#    Model::Domain::Image.new
#  end
end