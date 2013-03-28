class Model::Section::SecondaryNavigationMenu < SitePrism::Section
  element :parent, "h2 a"
  
  elements :children, "ul li a"
end