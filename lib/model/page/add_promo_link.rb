class Model::Page::AddPromoLink < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/admin/structure/menu/manage/menu-promo-menu/add"
  set_url_matcher /\/en\/admin\/structure\/menu\/manage\/menu-promo-menu\/add/

  element :link_title, "#edit-link-title"
  element :path, "#edit-link-path"
  element :language, "#edit-language"
  element :save_button, "input[value=Save]"
end