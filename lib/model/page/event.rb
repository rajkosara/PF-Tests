class Model::Page::Event < SitePrism::Page
  element :status, ".status"
  element :image, ".bc-full-width-img"

  section :cta_box, Model::Section::CtaBox, ".bc-hlight-box"
end