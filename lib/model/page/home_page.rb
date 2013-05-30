class Model::Page::HomePage < SitePrism::Page
  set_url "#{Helpers::Config['pf_site_root']}"

  element :createcourse,'a[href="Course/CreateCourse"] h2'
  element :find_examurl, 'a[href="Exam/FindExam"] h2'

  #findcourseurl is repeated twice on the page, so use .first and .last in the step defs
  elements :find_courseurl, 'a[href="Course/FindCourse"] h2'

  element :AddEditUser, 'a[href="Account/FindUser"] h2'

  element :changecountry, 'a[href="/Account/UserCountries"]'
  element :backto_homepage,'a[href="/"]'
  element :welcome_label,'bc-admin-greeting'


end