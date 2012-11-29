class Model::Page::PressRelease < SitePrism::Page
  element :title, "h1"
  element :status_message, ".messages"
  element :breadcrumb, ".bc-breadcrumb"
  element :tag, ".field-name-field-auto-tags"
  element :publish_date, ".date-display-single"
  element :notes_to_editor, ".field-name-field-notes-to-editors"
  element :about_the_british_council, ".field-name-field-about-british-council"
  element :uploaded_image, ".field-name-field-image img"

  def uploaded_image_name
    uploaded_image[:src].gsub("#{Helpers::Config['british_council_site_root']}#{Helpers::Config['image_location']}/", "")
  end
end