class Model::Page::CreatePressRelease < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/press-release"
  set_url_matcher /\/en\/node\/add\/press-release/

  element :title, "#edit-title-field-en-0-value"
  element :summary, "#edit-body-und-0-summary"
  element :publish_date, "#edit-field-pr-date-und-0-value-datepicker-popup-0"
  element :body, "iframe#edit-body-und-0-value_ifr"
  element :notes_to_editor, "iframe#edit-field-pr-editor-notes-und-0-value_ifr"
  element :about_the_british_council, "iframe#edit-field-pr-about-bc-und-0-value_ifr"
  element :save_button, "[value='Save']"

  elements :internal_links, "input[id^='edit-field-generic-internal-link'][type=text]"
  elements :promo, "input[id^='edit-field-generic-sidebar-promos'][type=text]"

  section :document_library, Model::Section::AddDocumentSection, "#node_press_release_form_group_document"
  section :meta_config, Model::Section::MetaConfig, ".vertical-tabs"

  sections :external_link, Model::Section::ExternalLink, "#field-generic-external-link-values .link-field-subrow"
end