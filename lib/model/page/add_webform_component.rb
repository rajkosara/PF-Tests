class Model::Page::AddWebformComponent < SitePrism::Page
  set_url_matcher /\/en\/node\/\d*\/webform\/components/

  element :status, "div.status"
end