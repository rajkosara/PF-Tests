class Model::Page::MobileCourse < SitePrism::Page
  element :status, ".status"
  element :edit, ".primary a[href*='edit']"
  element :title, "#bc-page-title"
  element :about_course_body, "#bc-tabs-bc-course-1 .bc-tab-content"
  element :tab_two_title, '#bc-tabs-bc-course-2 .bc-tab-title'
  element :tab_two_body, "#bc-tabs-bc-course-2 .bc-tab-content"
  element :tab_three_title, '#bc-tabs-bc-course-3 .bc-tab-title'
  element :tab_three_body, "#bc-tabs-bc-course-3 .bc-tab-content"
  element :timetable_title, '#bc-tabs-bc-course-4 .bc-tab-title'
  element :timetable_tab_body, "#bc-tabs-bc-course-4 .bc-tab-content"
  element :levels_tab, '#bc-tabs-bc-course-5 .bc-tab-title'
  element :levels_tab, '[data-hash="#bc-tabs-bc-course-5"] a'
end