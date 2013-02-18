class Model::Page::LandingPage < SitePrism::Page
  element :status, ".status"
  element :edit_button, ".tabs a[href*='edit']"
  element :title, "#bc-page-title"
  element :summary, "meta[name='description'][content]"
  element :body, ".bc-body-content"
  elements :child_pages, ".bc-box a[href]"

  def first_child
    child_pages.first
  end

  def second_child
    child_pages[1]
  end
end