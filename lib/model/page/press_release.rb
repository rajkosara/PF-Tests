class Model::Page::PressRelease < SitePrism::Page
  element :title, "h1"
  element :status_message, ".messages"
  element :breadcrumb, ".bc-breadcrumb"
  element :tag, ".field-name-field-auto-tags"
  element :publish_date, ".date-display-single"
  element :notes_to_editor, ".field-name-field-notes-to-editors"
  element :about_the_british_council, ".field-name-field-about-british-council"
  element :uploaded_image, ".node-press-release img"
  element :uploaded_document, ".bc-file"
  element :body, ".field-type-text-with-summary"

  def uploaded_image_name
    uploaded_image[:src].gsub("#{Helpers::Path.image_location}", "")
  end
end