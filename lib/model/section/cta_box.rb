class Model::Section::CtaBox < SitePrism::Section
  element :header, "h2"
  element :supporting_text, ".bc-box p"
  element :title_link, "a.bc-link-button"
  element :strapline, "div.first"
end