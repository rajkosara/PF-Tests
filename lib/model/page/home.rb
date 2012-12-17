class Model::Page::Home < SitePrism::Page
  set_url "#{Helpers::Config['british_council_site_root']}/en"

  section :footer, Model::Section::Footer, "footer"
end
