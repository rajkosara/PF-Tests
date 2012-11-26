class Model::Domain::Content
  attr_accessor :title
  attr_accessor :category
  attr_accessor :language
  attr_accessor :publish_date
  attr_accessor :summary
  attr_accessor :body
  attr_accessor :notes_to_editor
  attr_accessor :about_the_british_council
  attr_accessor :image_path
  attr_accessor :document_path
  attr_accessor :url_alias
  attr_accessor :tag

  def set_content_type content_type
    case content_type
    when :press_release
      @title = "Press release Title #{Time.current.strftime("%T")} #{String.random(4)}"
      @category = "Exams"
      @language = "English"
      @publish_date = ""
      @tag = "Adults"
      @summary = "Press release Summary #{String.random(4)} #{String.random(4)}"
      @body = "Press release body #{String.random(8)} \n \n More body #{String.random(8)}"
      @notes_to_editor = "Press release notes to editor #{String.random(10)}"
      @about_the_british_council = "Press release about the british council #{String.random(8)}"
      @image_path = "#{File.expand_path(File.join(Dir.pwd, 'test_data/press_release_img.png'))}"
      @document_path = "#{File.expand_path(File.join(Dir.pwd, 'test_data/test.pdf'))}"
      @url_alias = ""
    end
  end
end
