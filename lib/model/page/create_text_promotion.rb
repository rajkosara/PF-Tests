class Model::Page::CreateTextPromotion < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/promotion-text"
  set_url_matcher /\/en\/node\/add\/promotion-text/

  element :title, "#edit-title-field-en-0-value"
  element :internal_ref, "#edit-field-promo-internal-ref-und-0-value"
  element :image_tab, "#node_promotion_form_group_promotion_image .fieldset-title"
  element :summary, "#edit-field-promotion-summary-und-0-value"
  element :destination, "#edit-field-promotion-destination-und-0-url"
  element :button_text, "#edit-field-promotion-cta-text-und-0-value"
  element :save_button, "[value=Save]"
end