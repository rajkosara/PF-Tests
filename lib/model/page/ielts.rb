class Model::Page::Ielts < SitePrism::Page
  element :status, ".status"
  element :edit_button, ".tabs a[href*='edit']"
  element :translate_button, ".tabs a[href*='translate']"
  element :title, "#bc-page-title"
end