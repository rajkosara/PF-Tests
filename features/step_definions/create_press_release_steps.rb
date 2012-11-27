#this step should only be used as part of other steps and not in scenarios
Given /^I create a press release object$/ do
  @press_release = Model::Domain::Content.new
  @press_release.set_content_type :press_release
end

Then /^the create press release page is displayed$/ do
  @british_council.create_press_release.should be_displayed
end

When /^I enter a title for the press release$/ do
  @british_council.create_press_release.title.set " #{@press_release.title}"
end

When /^I save the press release$/ do
  @british_council.create_press_release.save.click
end

When /^I submit a press release with an empty title$/ do
  @british_council.create_press_release.title.set ""
  step "I save the press release"
end

Then /^a "(.*?)" error is displayed$/ do |error_message|
  @british_council.create_press_release.error_message.text.should include error_message
end

When /^I submit a press release with a (\d+) character title$/ do |length|
  @press_release.title = "#{String.random(length.to_i)}"
  @british_council.create_press_release.title.set "#{@press_release.title}"
  step "I save the press release"
end

When /^I select the exams category for the press release$/ do
  @british_council.create_press_release.exams_category_checkbox.select_option
end

When /^I enter select a tag for the press release$/ do
  @british_council.create_press_release.tag.set @press_release.tag
end

When /^I enter a path name for a press release$/ do
  @british_council.create_press_release.path_name.set @press_release.url_alias
end

When /^I enter a published date for the press release$/ do
    @british_council.create_press_release.publish_date @press_release.publish_date
end