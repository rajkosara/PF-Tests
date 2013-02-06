#encoding: utf-8
When /^I create a job object$/ do
  @job = Model::Domain::Content.new
  @job.set_content_type :job
end

Then /^the create job page is displayed$/ do
  @british_council.create_job.should be_displayed
end

When /^I save the job page$/ do
  @british_council.create_job.save_button.click
end

When /^I submit a job page$/ do
  step "the create job page is displayed"
  @british_council.create_job.job_title.set @job.job_title
  @british_council.create_job.summary.set @job.summary
  @british_council.create_job.job_aim.native.send_key @job.job_aim
  @british_council.create_job.location.set @job.location
  @british_council.create_job.salary.set @job.salary
  @british_council.create_job.duration.set @job.duration
  @british_council.create_job.annual_leave.set @job.annual_leave
  @british_council.create_job.internal_ref.set @job.internal_ref
  @british_council.create_job.how_to_apply.set @job.how_to_apply
  @british_council.create_job.role_overview.set @job.role_overview
  step "I save the job page"
end