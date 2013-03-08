class Model::Page::AddDocument < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/media-documents"
  set_url_matcher /\/en\/node\/add\/media-documents/

  element :document_path, "#edit-field-document-und-0-upload"
  element :document_upload_button, "#edit-field-document-und-0-upload-button"
  element :throbber, ".throbber"
  element :document_error, ".error"

  section :media_fields, Model::Section::MediaSection, ".content"
end