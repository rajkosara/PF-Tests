class Model::Page::Ielts < SitePrism::Page
  element :status, ".status"
  element :edit_button, ".tabs a[href*='edit']"
  element :title, "#bc-page-title"
end