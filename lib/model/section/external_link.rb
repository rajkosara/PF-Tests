class Model::Section::ExternalLink < SitePrism::Section
  element :title, '[id*="title"]'
  element :link, '[id*="url"]'
end