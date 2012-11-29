class Model::Page::CreatePressRelease < SitePrism::Page
  set_url "#{Helpers::Config['british_council_site_root']}/en/node/add/press-release"
  set_url_matcher /\/node\/add\/press\-release/
  
  element :title, '#edit-title'
  element :save, '#edit-submit'
  element :error_message, "#console"
  element :tag, "#edit-field-auto-tags-und"
  element :path_name, "#edit-field-path-name-und-0-value"
  element :publish_date_month, ".date-month"
  element :publish_date_day, "#edit-field-press-release-date-und-0-value-day"
  element :publish_date_year, ".date-year"
  element :notes_to_editor, "#edit-field-notes-to-editors-und-0-value"
  element :about_the_british_council, "#edit-field-about-british-council-und-0-value"
  element :image_path, "#edit-field-image-und-0-upload"
  element :upload_button, "#edit-field-image-und-0-upload-button"
  element :image_preview, ".image-preview img"
  element :uploading_image, ".throbber"

  elements :category_checkbox, ".term-reference-tree-level .form-item .form-checkbox"


  #iframe :text_area,Model::Page::TextArea ,"iframe#edit-body-und-0-value_ifr"
  element :text_area, "#tinymce"

  def exams_category_checkbox
    category_checkbox.find do |t|
      t.value.include? "219"
    end
  end

  #this takes the array that is the publish_date in the content.rb
  def publish_date date
    publish_date_day.select date[0]
    publish_date_month.select date[1]
    publish_date_year.select date[2]
  end

  def image_preview_name
    image_preview[:src].gsub("#{Helpers::Config['british_council_site_root']}#{Helpers::Config['thumbnail_image_location']}/", "")
  end
end