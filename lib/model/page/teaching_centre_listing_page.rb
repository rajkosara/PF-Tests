class Model::Page::TeachingCentreListingPage < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/teaching-centres"
  set_url_matcher /\/en\/teaching-centres/

  sections :teaching_centre_details, Model::Section::TeachingCentreDetails, "div.bc-view-standard article:not(.bc-teaching-centre-contact-details)"
end