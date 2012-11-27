class Model::Page::CreatePressRelease < SitePrism::Page
  set_url "#{Helpers::Config['british_council_site_root']}/en/node/add/press-release"
  set_url_matcher /\/node\/add\/press\-release/
  
  element :title, '#edit-title'
  element :press_release_body, '.mceIframeContainer'
  element :notes_to_editor, '#edit-field-notes-to-editors'
  element :about_the_british_council, '#edit-field-about-british-council'
  element :save, '#edit-submit'
  element :error_message, "#console"
  element :tag, "#edit-field-auto-tags-und"
  element :path_name, "#edit-field-path-name-und-0-value"
  element :publish_date_month, ".date-month"
  element :publish_date_day, "#edit-field-press-release-date-und-0-value-day"
  element :publish_date_year, ".date-year"

  elements :category_checkbox, ".term-reference-tree-level .form-item .form-checkbox"

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
end