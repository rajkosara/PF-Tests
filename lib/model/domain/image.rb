class Model::Domain::Image
  attr_accessor :title
  attr_accessor :description
  attr_accessor :expiration_reason
  attr_accessor :expiration_date
  attr_accessor :copyright_info
  attr_accessor :path
  attr_accessor :image_name
  attr_accessor :jpg
  attr_accessor :jpeg
  attr_accessor :tif
  attr_accessor :jpg_path
  attr_accessor :jpeg_path
  attr_accessor :tif_path
  attr_accessor :large_path
  attr_accessor :large

  def initialize
      @title = "Image Title #{Time.current.strftime("%T")} #{String.random(4)}"
      @description = "Image description #{Time.current.strftime("%T")} #{String.random(4)}"
      @image_name = "press_release_img.png"
      @jpg = "image_jpg.jpg"
      @jpeg = "image_jpeg.jpeg"
      @tif = "image_tif.tif"
      @large = "image_large.jpg"
      @large_path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@large}"))}"
      @jpg_path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@jpg}"))}"
      @jpeg_path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@jpeg}"))}"
      @tif_path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@tif}"))}"
      @path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@image_name}"))}"
      @copyright_info = "Image Copyright info #{Time.current.strftime("%T")} #{String.random(4)}"
      @expiration_date = 10.days.from_now.strftime("%d/%m/%Y")
      @expiration_reason = "Image reason"
  end
end
