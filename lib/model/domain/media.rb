class Model::Domain::Media
  attr_accessor :title
  attr_accessor :description
  attr_accessor :language
  attr_accessor :path
  attr_accessor :copyright_info
  attr_accessor :expiration_date
  attr_accessor :expiration_reason
  attr_accessor :image_name


  def set_content_type content_type
    case content_type
    when :image
      @title = "Image Title #{Time.current.strftime("%T")} #{String.random(4)}"
      @description = "Image description #{Time.current.strftime("%T")} #{String.random(4)}"
      @image_name = "press_release_img.png"
      @path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@image_name}"))}"
      @copyright_info = "Image Copyright info #{Time.current.strftime("%T")} #{String.random(4)}"
      @expiration_date = 10.days.from_now.strftime("%d/%m/%Y")
      @expiration_reason = "Image reason"
    end
  end
end
