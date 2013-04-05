class Model::Section::Footer < SitePrism::Section
  element :legal_text, "#bc-footer-lower-left-bar"

  elements :social_links, "#bc-social-media li a"
end