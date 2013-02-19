class Model::Page::User < SitePrism::Page
  set_url_matcher /\/en\/users\/.*/

  element :edit_link, ".tabs a[href*='edit']"
end