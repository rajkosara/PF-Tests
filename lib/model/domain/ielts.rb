class Model::Domain::Ielts < Model::Domain::Content
  attr_accessor :tab_one_title
  attr_accessor :tab_one_summary
  attr_accessor :tab_one_top_body
  attr_accessor :tab_one_links_title
  attr_accessor :tab_one_first_related_links
  attr_accessor :tab_one_bottom_body
  attr_accessor :links_title
  attr_accessor :related_links
  attr_accessor :tab_two_title
  attr_accessor :tab_two_top_body
  attr_accessor :tab_two_bottom_body
  attr_accessor :tab_three_title
  attr_accessor :tab_three_top_body
  attr_accessor :tab_three_bottom_body
  attr_accessor :tab_four_title
  attr_accessor :tab_four_top_body
  attr_accessor :tab_four_bottom_body


  def initialize
    @title = "IELTS Title #{Time.current.strftime("%T")} #{String.random(4)}"
    @tab_one_title = "IELTS Tab one Title #{String.random(4)}"
    @tab_one_summary = "IELTS Tab one Summary #{Time.current.strftime("%T")} #{String.random(4)}"
    @tab_one_top_body = "IELTS Tab one top body #{Time.current.strftime("%T")} #{String.random(4)}"
    @tab_one_links_title = "IELTS Tab links Title #{Time.current.strftime("%T")} #{String.random(4)}"
    @tab_one_first_related_links = ""
    @tab_one_bottom_body = "IELTS Tab one bottom body #{Time.current.strftime("%T")} #{String.random(4)}"
    @links_title = "IELTS related links title #{Time.current.strftime("%T")} #{String.random(4)}"
    @related_links = ""
    @tab_two_title = "IELTS Tab Two title #{String.random(4)}"
    @tab_two_top_body = "IELTS Tab Two top body #{Time.current.strftime("%T")} #{String.random(4)}"
    @tab_two_bottom_body = "IELTS Tab two bottom body #{Time.current.strftime("%T")} #{String.random(4)}"
    @tab_three_title = "IELTS Tab Three title #{String.random(4)}"
    @tab_three_top_body = "IELTS Tab Three top Body #{Time.current.strftime("%T")} #{String.random(4)}"
    @tab_three_bottom_body = "IELTS Tab Three bottom Body #{Time.current.strftime("%T")} #{String.random(4)}"
    @tab_four_title = "IELTS Tab four title #{String.random(4)}"
    @tab_four_top_body = "IELTS Tab Four Top Body #{Time.current.strftime("%T")} #{String.random(4)}"
    @tab_four_bottom_body = "IELTS Tab Four bottom Body #{Time.current.strftime("%T")} #{String.random(4)}"

    def cta
      @ielts ||= Model::Domain::Cta.new
    end
  end
end