class Model::Section::MetaConfig < SitePrism::Section
  element :menu_tab, "li.vertical-tab-button:first-of-type"
  element :publish_tab, "li.vertical-tab-button:last-of-type"
  
  section :menu_settings, Model::Section::MenuSettings, "#edit-menu .fieldset-wrapper"
  section :publish_settings, Model::Section::PublishSettings, "#edit-options .fieldset-wrapper"
end