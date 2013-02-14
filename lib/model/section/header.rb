class Model::Section::Header < SitePrism::Section
  element :bc_logo, "#bc-site-name a"
  element :country_name, "#bc-site-name span"
  element :language_switcher, "ul.language-switcher-locale-url"
end