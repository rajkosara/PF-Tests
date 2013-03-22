class Model::Section::LanguageSwitcher < SitePrism::Section
  element :english, ".last"
  element :korea, ".first"
end