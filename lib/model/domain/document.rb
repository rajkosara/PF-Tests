class Model::Domain::Document
  attr_accessor :title
  attr_accessor :description
  attr_accessor :path
  attr_accessor :expiration_date
  attr_accessor :expiration_reason
  attr_accessor :document_name
  attr_accessor :gif
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


  def initialize
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
