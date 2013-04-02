class Model::Section::MetaConfig < SitePrism::Section
  element :menu_tab, "li.vertical-tab-button:first-of-type"
  element :publish_tab, "li.vertical-tab-button:last-of-type"
  elements :tabs, "li.vertical-tab-button a[href] strong"
  
  section :menu_settings, Model::Section::MenuSettings, "#edit-menu .fieldset-wrapper"
  section :publish_settings, Model::Section::PublishSettings, "#edit-options .fieldset-wrapper"
  section :url_path_settings, Model::Section::UrlPathSettings, "#edit-path .fieldset-wrapper"
  section :meta_tags, Model::Section::MetaTags, "#edit-metatags .fieldset-wrapper"

  def url_path_setting
    evaluate_script(%Q{ jQuery('li.vertical-tab-button a[href] strong:contains("URL path settings")')}).pop
  end
end
