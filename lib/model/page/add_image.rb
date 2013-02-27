class Model::Page::AddImage < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/media-image"
  set_url_matcher /\/en\/node\/add\/media-image/

  element :image_path, "#edit-field-image-und-0-upload"
  element :image_upload_button, "#edit-field-image-und-0-upload-button"
  element :copyright_info, "#edit-field-copyright-and-source-right-und-0-value"
  element :throbber, ".throbber"
  element :image_error, ".error"

  section :media_fields, Model::Section::MediaSection, ".content"
end