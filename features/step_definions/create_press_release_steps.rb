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


#spent hours trying to get this to work. Will park and come back to it in a day or two

When /^I enter the body text for the press release$/ do
  #  @british_council.create_press_release.should have_text_area
  #  @british_council.create_press_release.wait_for_text_area
  #  @british_council.create_press_release.text_area do |area|
  #    puts area
  #    #puts area.set @press_release.body
  #  end
end

When /^I enter the notes to editor text for the press release$/ do
  @british_council.create_press_release.notes_to_editor.set @press_release.notes_to_editor
end

When /^I enter the about the british council for the press release$/ do
  @british_council.create_press_release.about_the_british_council.set @press_release.about_the_british_council
end

When /^I enter the image path for the press release$/ do
  @british_council.create_press_release.image_path.set @press_release.image_path
end

When /^I upload the image to the press release$/ do
  @british_council.create_press_release.upload_button.click
  #Timeout.timeout(30) {sleep(0.1) until @british_council.create_press_release.uploading_image.visible?}
  #Timeout.timeout(30) {sleep(0.1) while @british_council.create_press_release.uploading_image.visible?}
  Timeout.timeout(30) {sleep(0.1) until @british_council.create_press_release.image_preview.visible?}
  @image = @british_council.create_press_release.image_preview_name
end