class Model::Page::EditFaqSetting < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/admin/structure/types/manage/faq/fields/field_faq_answer"
  set_url_matcher /\admin\/structure\/types\/manage\/faq\/fields\/field_faq_answer/
  element :display_label, "#edit-instance-display-label"
  element :save_button, "#edit-submit"
end