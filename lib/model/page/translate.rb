class Model::Page::Translate < SitePrism::Page
  set_url_matcher /\/node\/\d*\/translate/

  element :add_translation, "tr a[href*='translation']"
end