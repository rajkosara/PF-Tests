class Model::Page::PressRelease < SitePrism::Page
  element :status, ".status"
  element :document_name, ".bc-file"
  element :title, "#bc-page-title h1"
  element :publish_date, ".date-display-single"
  element :body, ".bc-body-content"
  element :notes_to_editor, ".bc-col1 section p:nth-last-of-type(2)"
  element :about_the_british_council, ".bc-col1 section p:nth-child(6)"
  element :internal_link, ".bc-lk-list-16 li a"
  element :external_link, ".bc-lk-list-16 li a"

  sections :sidebar_text_promotions, Model::Section::SidebarTextPromotion, ".bc-promo"
end