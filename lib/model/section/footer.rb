class Model::Section::Footer < SitePrism::Section
  element :about_british_council_france_link, ".about-british-council-france a"
  element :partner_with_us_link, ".partner-with-us a"
  element :teach_english_link, ".teach-english a"

  section :about_british_council_france, Model::Section::AboutBritishCouncilFranceMenu, ".about-british-council-france"
  section :partner_with_us, Model::Section::PartnerWithUs, ".partner-with-us"
  section :teach_english, Model::Section::TeachEnglish, ".teach-english"
end