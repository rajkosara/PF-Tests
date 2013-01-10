class Model::Section::TeachEnglish < SitePrism::Section
  element :courses_for_english_teachers, ".courses-for-teachers-of-english a"
  element :online_teaching_resources, ".online-teaching-resources a"
  element :teaching_in_the_uk, ".teaching-in-the-uk a"
end