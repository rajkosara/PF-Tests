#encoding: utf-8
Then /^the create job page is displayed$/ do
  @british_council.create_job.should be_displayed
end

When /^I save the job page$/ do
  @british_council.create_job.save_button.click
end

When /^I submit a job page$/ do
  step "the create job page is displayed"
  step "I enter a job title for the job page"
  step "I enter a summary for the job page"
  step "I enter a job aim for the job page"
  step "I enter a location for the job page"
  step "I enter a salary for the job page"
  step "I enter a duration for the job page"
  step "I enter a annual leave for the job page"
  step "I enter a internal ref for the job page"
  step "I enter a how to apply for the job page"
  step "I enter a role overview for the job page"
  step "I save the job page"
end

When /^I submit a job page without a job title$/ do
  step "the create job page is displayed"
  step "I enter a summary for the job page"
  step "I enter a job aim for the job page"
  step "I enter a location for the job page"
  step "I enter a salary for the job page"
  step "I enter a duration for the job page"
  step "I enter a annual leave for the job page"
  step "I enter a internal ref for the job page"
  step "I enter a how to apply for the job page"
  step "I enter a role overview for the job page"
  step "I save the job page"
end

When /^I submit a job page without a job aim$/ do
  step "the create job page is displayed"
  step "I enter a job title for the job page"
  step "I enter a how to apply for the job page"
  step "I save the job page"
end

When /^I submit a job page without a how to apply$/ do
  step "the create job page is displayed"
  step "I enter a job title for the job page"
  step "I enter a job aim for the job page"
  step "I save the job page"
end

When /^I enter a job title for the job page$/ do
  @british_council.create_job.job_title.set @job.job_title
end

When /^I enter a summary for the job page$/ do
  @british_council.create_job.summary.set @job.summary
end

When /^I enter a job aim for the job page$/ do
  @british_council.create_job.job_aim.native.send_key @job.job_aim
end

When /^I enter a location for the job page$/ do
  @british_council.create_job.location.set @job.location
end

When /^I enter a salary for the job page$/ do
  @british_council.create_job.salary.set @job.salary
end

When /^I enter a duration for the job page$/ do
  @british_council.create_job.duration.set @job.duration
end

When /^I enter a annual leave for the job page$/ do
  @british_council.create_job.annual_leave.set @job.annual_leave
end

When /^I enter a internal ref for the job page$/ do
  @british_council.create_job.internal_ref.set @job.internal_ref
end

When /^I enter a how to apply for the job page$/ do
  @british_council.create_job.how_to_apply.native.send_keys @job.how_to_apply
end

When /^I enter a role overview for the job page$/ do
  @british_council.create_job.role_overview.native.send_keys @job.role_overview
end

Then /^a "(.*?)" error message is displayed on the create job page$/ do |error_message|
  @british_council.create_job.error_message.text.should include error_message
end

When /^I enter a job title with 70 characters for the job page$/ do
  @title = String.random(70)
  @british_council.create_job.job_title.set @title
end

Then /^a zero characters remaining error message is displayed on the create job page$/ do
  @british_council.create_job.counter_message.text.should include "Content limited to 60 characters, remaining: 0"
  @british_council.create_job.job_title.text.should_not == @title
end

Then /^I publish a job page$/ do
  @british_council.create_job.meta_config.publish_tab.click
  @british_council.create_job.meta_config.publish_settings.publish_status.select "Published"
end

When /^I submit a published job page$/ do
  step "the create job page is displayed"
  step "I enter a job title for the job page"
  step "I enter a summary for the job page"
  step "I enter a job aim for the job page"
  step "I enter a location for the job page"
  step "I enter a salary for the job page"
  step "I enter a duration for the job page"
  step "I enter a annual leave for the job page"
  step "I enter a internal ref for the job page"
  step "I enter a how to apply for the job page"
  step "I enter a role overview for the job page"
  step "I publish a job page"
  step "I save the job page"
end
