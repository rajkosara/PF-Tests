class Model::Page::User < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/admin/people/create"
  set_url_matcher /\/en\/users\/.*/

  element :edit_link, ".tabs a[href*='edit']"
end