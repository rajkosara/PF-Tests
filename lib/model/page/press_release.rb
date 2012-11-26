class Model::Page::PressRelease < SitePrism::Page
  element :title, "h1"
  element :status_message, ".messages"
  element :breadcrumb, ".bc-breadcrumb"
  element :tag, ".field-name-field-auto-tags"
end