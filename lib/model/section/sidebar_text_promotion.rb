class Model::Section::SidebarTextPromotion < SitePrism::Section
  element :destination, "a:last-of-type"
  element :title, "h2"
  element :summary, "p"
  element :image, "img"
end