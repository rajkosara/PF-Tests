class Model::Page::AddVideo < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/media-video"
  set_url_matcher /\/en\/node\/add\/media-video/

  element :video_url, "#edit-field-video-url-und-0-url"
  element :video_error, "div.error"
  element :delete_button, "[value='Delete']"

  section :media_fields, Model::Section::MediaSection, ".content"

end