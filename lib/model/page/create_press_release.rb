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

  #section :published_date, Model::Section::PublishedDate, '#field-press-release-date-add-more-wrapper' example of a section

  def exams_category_checkbox
    category_checkbox.find do |t|
      t.value.include? "219"
    end
  end

#  def publish_date day, month, year
#    publsih_date_day.set day
#    publish_date_month.set month
#    publish_date_year.set year
#  end
end