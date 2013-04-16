class Model::Page::Home < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}"

  element :status, ".status"
  element :title, ".bc-boxes-2-ltr h1"
  element :body_column_one_body, ".bc-boxes-2-ltr .bc-col1 p"
  element :body_column_two_body, ".bc-boxes-2-ltr .bc-col2 p"
  element :third_column_heading, "#bc-content h2:nth-child(3)"
  element :edit_button, ".tabs a[href*='edit']"
  element :facebook_wiget, "#bc-facebook"

  elements :body_links, ".bc-boxes-2-ltr ul[class^='bc-lk-list'] li a"

  section :caroucel, Model::Section::CtaWithImage, ".bc-card"
  section :header, Model::Section::Header, "#bc-header-wrapper"
  section :footer, Model::Section::Footer, "#bc-footer-wrapper"

  sections :promo_box, Model::Section::PromoBox, ".bc-boxes-3 article.bc-box:not(.bc-section-box)"
  sections :promo_box_with_links, Model::Section::PromoBoxWithLinks, ".bc-section-box"
end
