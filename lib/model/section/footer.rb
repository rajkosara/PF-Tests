class Model::Section::Footer < SitePrism::Section
  element :legal_text, ".block-solas-blocks"

  elements :social_links, "#bc-social-media li a"
end