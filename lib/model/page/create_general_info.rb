class Model::Page::CreateGeneralInfo < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/general-info"
  set_url_matcher /\/node\/add\/general-info/

  element :title, "#edit-title-field-en-0-value"
  element :summary, "#edit-body-und-0-summary"
  element :body, "iframe#edit-body-und-0-value_ifr"
  element :internal_link, "#edit-field-generic-internal-link-und"
  element :save_button, '#edit-submit'
  
  sections :external_link, Model::Section::ExternalLink,".link-field-subrow"

  def thing other
    self.native.send_key other
  end
end