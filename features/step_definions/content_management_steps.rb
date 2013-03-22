#encoding: utf-8
When /^I create a job object$/ do
  @job ||= Model::Domain::Job.new
end

When /^I create a event object$/ do
  @event ||= Model::Domain::Event.new
end

Given /^I create a faq object$/ do
  @faq ||= Model::Domain::Faq.new
end

When /^I create a general info object$/ do
  @general_info ||= Model::Domain::GeneralInfo.new
end

When /^I create a landing page object$/ do
  @landing_page ||= Model::Domain::LandingPage.new
end

When /^I create a course object$/ do
  @course ||= Model::Domain::Course.new
end

When /^create a teaching centre object$/ do
  @teaching_centre ||= Model::Domain::TeachingCentre.new
end

When /^I create a image object$/ do
  @image = Model::Domain::Image.new
end

Given(/^I create a document object$/) do
  @document = Model::Domain::Document.new
end

Given(/^I create a video object$/) do
  @video = Model::Domain::Video.new
end

When(/^create a ielts object$/) do
  @ielts ||= Model::Domain::Ielts.new
end

Given(/^I create a partner object$/) do
  @partner ||= Model::Domain::Partner.new
end

Given(/^I create a promotion object$/) do
  @promotion ||= Model::Domain::Promotion.new
end