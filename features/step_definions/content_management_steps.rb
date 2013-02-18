#encoding: utf-8
When /^I create a job object$/ do
  @job = Model::Domain::Job.new
end

When /^I create a event object$/ do
  @event = Model::Domain::Event.new
end

Given /^I create a faq object$/ do
  @faq = Model::Domain::Faq.new
end

When /^I create a general info object$/ do
  @general_info = Model::Domain::GeneralInfo.new
end

When /^I create a landing page object$/ do
  @landing_page = Model::Domain::LandingPage.new
end

When /^I create a image object$/ do
  @image = Model::Domain::Media.new
  @image.set_content_type :image
end