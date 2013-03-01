class Model::Page::Home < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}"
  
  section :header, Model::Section::Header, "#bc-header-wrapper"
  section :footer, Model::Section::Footer, "#bc-footer-wrapper"
end
