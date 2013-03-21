class Model::Domain::Partner < Model::Domain::Content
  attr_accessor :header

  def initialize
    @title = "Partner Title #{Time.current.strftime("%T")} #{String.random(4)}"
    @summary = "Partner Summary #{Time.current.strftime("%T")} #{String.random(4)}"
    @header = "Partner header #{Time.current.strftime("%T")} #{String.random(4)}"
  end
end
