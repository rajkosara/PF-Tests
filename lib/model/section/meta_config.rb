class Model::Section::MetaConfig < SitePrism::Section
  element :menu_tab, "li.vertical-tab-button:first-of-type"
  element :publish_tab, "li.vertical-tab-button:last-of-type"
  element :publish_status, ".form-item-status .option"
  section :menu_settings, Model::Section::MenuSettings, "#edit-menu .fieldset-wrapper"
end