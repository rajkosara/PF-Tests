class Model::Page::CreateJob < SitePrism::Page
  set_url "#{Helpers::Config['korea_site_root']}/node/add/job"
  set_url_matcher /\/node\/add\/job/

  element :job_title, "#edit-title-field-en-0-value"
  element :summary, "#edit-body-und-0-summary"
  element :job_aim, "iframe#edit-body-und-0-value_ifr"
  element :tags, "#edit-field-generic-tags-und"
  element :location, "#edit-field-generic-location-und-0-value"
  element :salary, "#edit-field-job-salary-und-0-value"
  element :duration, "#edit-field-job-duration-und-0-value"
  element :working_hours, "#edit-field-job-working-hours-und-0-value"
  element :annual_leave, "#edit-field-job-annual-leave-und-0-value"
  element :internal_ref, "#edit-field-job-internal-ref-code-und-0-value"
  element :how_to_apply, "#edit-field-job-how-to-apply-und-0-value"
  element :role_overview, "#edit-field-job-detailed-body-und-0-value"
  element :internal_link, "#edit-field-generic-internal-link-und-0-target-id"
  
  element :save_button, '#edit-submit'

  sections :external_link, Model::Section::ExternalLink,".link-field-subrow"
end