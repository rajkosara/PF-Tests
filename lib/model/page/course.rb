class Model::Page::Course < SitePrism::Page
  element :status, ".status"
  element :edit, ".primary a[href*='edit']"
  element :title, "#bc-page-title"
  element :about_course_body, "#bc-tabs-bc-course-1 .bc-tab-content"
  element :tab_two_title, '[data-hash="#bc-tabs-bc-course-2"] a'
  element :tab_two_body, "#bc-tabs-bc-course-2 .bc-tab-content"
  element :tab_three_title, '[data-hash="#bc-tabs-bc-course-3"] a'
  element :tab_three_body, "#bc-tabs-bc-course-3 .bc-tab-content"
  element :timetable_tab, '[data-hash="#bc-tabs-bc-course-4"] a'
  element :timetable_tab_body, "#bc-tabs-bc-course-4 .bc-tab-content"
  element :course_timetable_heading, "#bc-tabs-bc-course-4 div.bc-tab-content h2"
  element :course_timetable, "#bc-tabs-bc-course-4 .bc-show-hide"
  element :levels_tab, '[data-hash="#bc-tabs-bc-course-5"] a'
  element :about_strapline, ".bc-card figcaption"
  element :about_cta, ".bc-cta"
  element :cta_image, ".bc-full-width-img"
  element :breadcrumbs, "#bc-breadcrumb"
  element :course_taught, "section h3"
  element :teaching_centre, ".bc-tab-content section li a"

  section :level, Model::Section::Level, "#bc-tabs-bc-course-5 .bc-tab-content .bc-show-hide"

  sections :cta_box, Model::Section::CtaBox, ".bc-hlight-box"
end