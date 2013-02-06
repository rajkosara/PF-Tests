Then /^the job page is created$/ do
  @british_council.job.status.text.should include "Job #{@job.job_title} has been created."
end

Then /^the job appears in the job section of the site$/ do
  @british_council.job.current_url.should include '/jobs/'
end