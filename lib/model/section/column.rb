class Model::Section::Column < SitePrism::Section
  element :image_promo, "[id$='-img-promo-und-0-target-id']"

  elements :title, "[id$='title']"
  elements :url, "[id$='url']"
end