class Model::Domain::Media
  attr_accessor :title
  attr_accessor :description
  attr_accessor :language
  attr_accessor :path
  attr_accessor :copyright_info
  attr_accessor :expiration_date
  attr_accessor :expiration_reason
  attr_accessor :image_name
  attr_accessor :document_name
  attr_accessor :jpg
  attr_accessor :jpeg
  attr_accessor :gif
  attr_accessor :jpg_path
  attr_accessor :jpeg_path
  attr_accessor :gif_path
  attr_accessor :large_path
  attr_accessor :large
  attr_accessor :doc
  attr_accessor :docx
  attr_accessor :xls
  attr_accessor :ppt
  attr_accessor :doc_path
  attr_accessor :docx_path
  attr_accessor :xls_path
  attr_accessor :ppt_path



  def set_content_type content_type
    case content_type
    when :image
      @title = "Image Title #{Time.current.strftime("%T")} #{String.random(4)}"
      @description = "Image description #{Time.current.strftime("%T")} #{String.random(4)}"
      @image_name = "press_release_img.png"
      @jpg = "image_jpg.jpg"
      @jpeg = "image_jpeg.jpeg"
      @gif = "image_gif.gif"
      @large = "image_large.jpg"
      @large_path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@large}"))}"
      @jpg_path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@jpg}"))}"
      @jpeg_path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@jpeg}"))}"
      @gif_path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@gif}"))}"
      @path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@image_name}"))}"
      @copyright_info = "Image Copyright info #{Time.current.strftime("%T")} #{String.random(4)}"
      @expiration_date = 10.days.from_now.strftime("%d/%m/%Y")
      @expiration_reason = "Image reason"
      
    when :document
      @title = "Document Title #{Time.current.strftime("%T")} #{String.random(4)}"
      @description = "Document description #{Time.current.strftime("%T")} #{String.random(4)}"
      @document_name = "test_doc.pdf"
      @doc = "doc_doc.doc"
      @docx = "doc_docx.docx"
      @xls = "doc_xls.xls"
      @ppt = "doc_ppt.ppt"
      @gif = "image_gif.gif"
      @large = "doc_large.pdf"
      @large_path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@large}"))}"
      @doc_path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@doc}"))}"
      @docx_path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@docx}"))}"
      @xls_path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@xls}"))}"
      @ppt_path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@ppt}"))}"
      @path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@document_name}"))}"
      @gif_path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@gif}"))}"
      @expiration_date = 10.days.from_now.strftime("%d/%m/%Y")
      @expiration_reason = "Document reason"
    end
  end
end
