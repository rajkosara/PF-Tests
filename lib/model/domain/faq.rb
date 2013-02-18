class Model::Domain::Faq < Model::Domain::Content
  attr_accessor :question
  attr_accessor :answer
  attr_accessor :category

  def initialize
    @question =  "FAQ question? #{Time.current.strftime("%T")} #{String.random(4)}"
    @answer =   "FAQ answer \n More answers #{Time.current.strftime("%T")} #{String.random(4)}"
    @category = "Arts"
  end
end