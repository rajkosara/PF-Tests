class Model::Page::ManageSocialMediaLinks < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/admin/config/system/socialmedia"
  set_url_matcher /\/admin\/config\/system\/socialmedia/

  element :save_button, "#edit-submit"

  sections :social_link_rows, Model::Section::SocialLinkRows, "tbody tr"
end