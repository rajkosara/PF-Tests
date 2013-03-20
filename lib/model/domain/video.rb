class Model::Domain::Video
  attr_accessor :title
  attr_accessor :description
  attr_accessor :url
  attr_accessor :expiration_date
  attr_accessor :expiration_reason
  attr_accessor :copyright_info
  attr_accessor :youtube
  attr_accessor :vimeo
  attr_accessor :viddler
  

  def initialize
    @title = "Video Title #{Time.current.strftime("%T")} #{String.random(4)}"
    @description = "Video description #{Time.current.strftime("%T")} #{String.random(4)}"
    @url = @youtube
    @youtube = "http://www.youtube.com/watch?v=yP11r5n5RNg"
    @vimeo = "http://vimeo.com/60149613"
    @viddler = ""
    @copyright_info = "Video Copyright info #{Time.current.strftime("%T")} #{String.random(4)}"
    @expiration_date = 10.days.from_now.strftime("%d/%m/%Y")
    @expiration_reason = "Video reason"
  end
end