class Model::Section::Header < SitePrism::Section
  element :bc_logo, "#bc-site-name a"
  element :country_name, "#bc-site-name span"

  elements :promo_links, "#bc-sub-menu li"
  
  section :language_switcher, Model::Section::LanguageSwitcher,"ul.language-switcher-locale-url"
  section :main_menu, Model::Section::MainMenu, "#bc-primary-menu"
end