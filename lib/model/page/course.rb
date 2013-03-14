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
  element :levels_tab, '[data-hash="#bc-tabs-bc-course-5"] a'
  element :about_strapline, ".bc-card figcaption"
  element :about_cta, ".bc-cta"

  sections :cta_box, Model::Section::CtaBox, ".bc-hlight-box"
end