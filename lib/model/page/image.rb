class Model::Page::Image < SitePrism::Page
  element :status, ".status"
  
  elements :image, ".bc-image-review img"
end