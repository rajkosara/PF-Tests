class Model::Page::Video < SitePrism::Page
  element :status, ".status"
  element :edit_button, ".primary a[href*='edit']"
end