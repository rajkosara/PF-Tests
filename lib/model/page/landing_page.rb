class Model::Page::LandingPage < SitePrism::Page
  element :status, ".status"
  element :edit_button, ".tabs a[href*='edit']"
  element :translate_button, ".tabs a[href*='translate']"
  element :title, "#bc-page-title"
  element :summary, "meta[name='description'][content]"
  element :body, ".bc-body-content"
  element :two_column, ".bc-boxes-2-ltr .bc-boxes-2"
  element :child_summary, ".bc-listing p"
  
  elements :child_pages_title, ".bc-listing h2"
  elements :child_pages_summary, ".bc-box a[href] p"
  elements :image, ".bc-box img"

  section :header, Model::Section::Header, "#bc-header-wrapper"

  def first_child_title
    child_pages_title.first
  end

  def second_child_title
    child_pages_title[1]
  end

  def first_child_summary
    child_pages_summary.first
  end

  def second_child_summary
    child_pages_summary[1]
  end

  def filename
    current_url.gsub("#{Helpers::Config['korea_site_root']}/", "")
  end
end