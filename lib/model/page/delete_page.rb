class Model::Page::DeletePage < SitePrism::Page
  set_url_matcher /\/en\/node\/\d*\/delete/
  
  element :delete_button, "[value='Delete']"
end