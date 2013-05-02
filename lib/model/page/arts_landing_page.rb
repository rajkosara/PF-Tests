class Model::Page::ArtsLandingPage < SitePrism::Page
  element :status, ".status"
  element :edit_button, ".tabs a[href*='edit']"
  element :title, "#bc-page-title h1"

  sections :promotion, Model::Section::CtaWithImage, ".bc-card"
  sections :sidebar_text_promotions, Model::Section::SidebarTextPromotion, ".bc-promo"
end