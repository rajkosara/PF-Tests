class Model::Domain::Content
  attr_accessor :title
  attr_accessor :category
  attr_accessor :language
  attr_accessor :publish_date_day
  attr_accessor :publish_date_month
  attr_accessor :publish_date_year
  attr_accessor :publish_date
  attr_accessor :summary
  attr_accessor :body
  attr_accessor :notes_to_editor
  attr_accessor :about_the_british_council
  attr_accessor :image_name
  attr_accessor :image_path
  attr_accessor :document_name
  attr_accessor :document_path
  attr_accessor :url_alias
  attr_accessor :tag
  attr_accessor :question
  attr_accessor :answer
  attr_accessor :internal_link
  attr_accessor :external_link


  def set_content_type content_type
    case content_type
    when :press_release
      @title = "Press release Title #{Time.current.strftime("%T")} #{String.random(4)}"
      @category = "Exams"
      @language = "English"
      @publish_date_day ="#{1.day.ago.day}"
      @publish_date_month = "#{Time.now.strftime("%b")}"
      @publish_date_year = "#{1.day.ago.year}"
      @publish_date = [@publish_date_day, @publish_date_month, @publish_date_year]
      @tag = "Adults"
      @url_alias = "Made up url path #{String.random(4)}"
      @summary = "Press release Summary #{String.random(4)} #{String.random(4)}"
      @body = "Press release body #{String.random(8)} \n More body #{String.random(8)}"
      @notes_to_editor = "Press release notes to editor #{String.random(10)}"
      @about_the_british_council = "Press release about the british council #{String.random(8)}"
      @image_name = "press_release_img.png"
      @image_path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@image_name}"))}"
      @document_name = "test_doc.pdf"
      @document_path = "#{File.expand_path(File.join(Dir.pwd, "test_data/#{@document_name}"))}"

    when :blog
      @title = "Blog Title #{Time.current.strftime("%T")} #{String.random(4)}"
      @summary = "Blog Summary #{String.random(4)} #{String.random(4)}"
      @body = "Blog body #{String.random(8)} \n More body #{String.random(8)}"

    when :faq
      @question = "FAQ question? #{Time.current.strftime("%T")} #{String.random(4)}"
      @answer = "FAQ answer \n More answers #{Time.current.strftime("%T")} #{String.random(4)}"
      @category = "Arts"

    when :general_info
      @title = "General Info Title #{Time.current.strftime("%T")} #{String.random(4)}"
      @summary = "General Indo Summary #{Time.current.strftime("%T")} #{String.random(4)}"
      @body = "General info Body #{Time.current.strftime("%T")} #{String.random(4)}"
      @internal_link = ""
      @external_link_title = "General info external link title #{Time.current.strftime("%T")} #{String.random(4)}"
      @external_link_url = "https://www.google.co.uk"
    end
  end
end
