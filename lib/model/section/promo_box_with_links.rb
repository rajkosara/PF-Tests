class Model::Section::PromoBoxWithLinks < SitePrism::Section
  element :title, "h2"
  element :href, "a[href]:not(:first-child)"
  element :image, "img"

  elements :links, ".bc-section-box [class^='bc-lk-list'] li a"
end