class Model::Page::GeneralInfo < SitePrism::Page
  element :status, ".status"
  element :external_link, ".field-name-field-generic-external-link .field-item a"
  element :internal_link, ".field-name-body .field-item"
  element :description_meta_tag, "meta[name='description'][content]"
  element :title_meta_tag, "title"

  def filename
    current_url.gsub("#{Helpers::Config['korea_site_root']}/", "")
  end
end