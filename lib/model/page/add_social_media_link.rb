class Model::Page::AddSocialMediaLink < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/admin/config/system/socialmedia/add"
  set_url_matcher /\/admin\/config\/system\/socialmedia\/add/

  element :name, "#edit-name"
  element :link, "#edit-link"
  element :save_button,"#edit-submit"
end