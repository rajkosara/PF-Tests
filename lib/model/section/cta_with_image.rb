class Model::Section::CtaWithImage < SitePrism::Section
  element :cta_image, ".bc-full-width-img"
  element :strapline, "figcaption"
  element :cta_title, ".bc-cta a"
end