class Model::Page::FindExam < SitePrism::Page
  set_url "#{Helpers::Config['pf_site_root']}/Exam/FindExam"
  element :location_vienna, '#Locations_2_LocationId'
  element :date_error,'#lblRegDatesErrorMsg'
  elements :add_record,'[href*="GetExamById"]'
  element :records_count,'.jtable-page-info'
  element :search_button,'#LoadRecordsButton'
  element :clear_button,'#ClearButton'
  elements :date_picker,'.ui-datepicker-trigger'
  element :start_date,'.ui-state-highlight'
  elements :end_date,'.ui-state-default'
  elements :days,'td a'

  elements :prev_month,'div a span'
  
end