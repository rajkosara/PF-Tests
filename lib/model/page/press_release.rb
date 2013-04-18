class Model::Page::PressRelease < SitePrism::Page
  element :status, ".status"
  element :document_name, ".bc-file"
end