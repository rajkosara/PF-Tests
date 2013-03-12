class Model::Page::GeneralInfo < SitePrism::Page
  element :title, "#bc-page-title"
  element :body, ".bc-body-content"
  element :status, ".status"
  element :description_meta_tag, "meta[name='description'][content]"
  element :title_meta_tag, "title"
  element :image, ".bc-full-width-img"
  element :document_name, ".bc-file a"
  element :edit_button, ".tabs a[href*='edit']"

  elements :links, ".bc-lk-list-16 a"

  def filename
    current_url.gsub("#{Helpers::Config['korea_site_root']}/", "")
  end

  def internal_link
    evaluate_script(%Q{ jQuery("#{links.first.css_locator}").first()})
  end

  def external_link
    links.last
  end
end