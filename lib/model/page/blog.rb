class Model::Page::Blog < SitePrism::Page
  element :description_meta_tag, "meta[name='description'][content]"
  element :title_meta_tag, "title"

  def filename
    current_url.gsub("#{Helpers::Config['korea_site_root']}/", "")
  end
end