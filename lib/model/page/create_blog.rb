class Model::Page::CreateBlog < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/blog"
  set_url_matcher /\/node\/add\/blog/

  element :title, '#edit-title'
  element :summary, '#edit-body-und-0-summary'
  element :body, 'iframe#edit-body-und-0-value_ifr'
  element :save_button, '#edit-submit'
end