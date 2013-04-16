class Model::Page::SearchResults < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/search/node"
  set_url_matcher /\/en\/search\/node/

  element :no_results, ".bc-help h2"

  elements :title, ".bc-box h2"
  elements :body, ".bc-box p"
end