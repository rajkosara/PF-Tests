class Model::Section::AboutBritishCouncilFranceMenu < SitePrism::Section
  element :biographies, ".biographies a"
  element :british_council_global, ".british-council-global a"
  element :job_opportunities, ".job-opportunities a"
  element :press_enquiries, ".press-enquiries a"
end