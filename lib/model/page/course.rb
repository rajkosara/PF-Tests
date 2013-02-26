class Model::Page::Course < SitePrism::Page
  element :status, ".status"
  element :edit, ".primary a[href*='edit']"
  element :title, "#bc-page-title"
  element :about_course_body, "#bc-tabs-bc-course-1 .bc-tab-content"
  element :tab_two_title, '[data-hash="#bc-tabs-bc-course-2"] a'
  element :tab_two_body, "#bc-tabs-bc-course-2 .bc-tab-content"
  element :tab_three_title, '[data-hash="#bc-tabs-bc-course-3"] a'
  element :tab_three_body, "#bc-tabs-bc-course-3 .bc-tab-content"
  element :calendar_and_pricing, '[data-hash="#bc-tabs-bc-course-4"] a'
  element :calendar_pricing_tab_body, "#bc-tabs-bc-course-4 .bc-tab-content"
  element :levels_tab, '[data-hash="#bc-tabs-bc-course-5"] a'
end