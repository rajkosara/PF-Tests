Then /^the job page is created$/ do
  @british_council.job.status.text.should include "Job #{@job.job_title} has been created."
end