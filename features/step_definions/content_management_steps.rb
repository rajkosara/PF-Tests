#encoding: utf-8
When /^I create a job object$/ do
  @job = Model::Domain::Content.new
  @job.set_content_type :job
end

When /^I create a event object$/ do
  @event = Model::Domain::Content.new
  @event.set_content_type :event
end

Given /^I create a blog post object$/ do
  @blog = Model::Domain::Content.new
  @blog.set_content_type :blog
end

Given /^I create a faq object$/ do
  @faq = Model::Domain::Content.new
  @faq.set_content_type :faq
end

When /^I create a general info object$/ do
  @general_info = Model::Domain::Content.new
  @general_info.set_content_type :general_info
end

Given /^I create a press release object$/ do
  @press_release = Model::Domain::Content.new
  @press_release.set_content_type :press_release
end

When /^I create a landing page object$/ do
  @landing_page = Model::Domain::Content.new
  @landing_page.set_content_type :landing_page
end
