When(/^I submit a press release page$/) do
  step "I enter a title for a press release"
  step "I enter a publish date for a press release"
  step "I enter a summary for a press release"
  step "I enter a body for a press release"
  step "I enter a notes to editor for a press release"
  step "I enter a about the british council for a press release"
  step "I save a press release"
end

When(/^I submit a press release page without a title$/) do
  step "I enter a publish date for a press release"
  step "I enter a summary for a press release"
  step "I enter a body for a press release"
  step "I enter a notes to editor for a press release"
  step "I enter a about the british council for a press release"
  step "I save a press release"
end

When(/^I enter a title for a press release$/) do
  @british_council.create_press_release.title.set @press_release.title
end

When(/^I enter a publish date for a press release$/) do
  @british_council.create_press_release.publish_date.set @press_release.publish_date
end

When(/^I enter a summary for a press release$/) do
  @british_council.create_press_release.summary.set @press_release.summary
end

When(/^I enter a body for a press release$/) do
  @british_council.create_press_release.body.native.send_keys @press_release.body
end

When(/^I enter a notes to editor for a press release$/) do
  @british_council.create_press_release.notes_to_editor.native.send_keys @press_release.notes_to_editor
end

When(/^I enter a about the british council for a press release$/) do
  @british_council.create_press_release.about_the_british_council.native.send_keys @press_release.about_the_british_council
end

When(/^I save a press release$/) do
  @british_council.create_press_release.save_button.click
end

Then(/^a "(.*?)" error message is displayed on the create press release page$/) do |error_message|
  @british_council.create_press_release.error_message.text.should include error_message
end

When(/^I submit a press release page with a document$/) do
  step "I enter a title for a press release"
  step "I enter a publish date for a press release"
  step "I enter a summary for a press release"
  step "I enter a body for a press release"
  step "I enter a notes to editor for a press release"
  step "I enter a about the british council for a press release"
  @british_council.create_press_release.document_library.tab.click
  wait_for_ajax
  @british_council.create_press_release.document_library.select_checkboxes.first.click
  wait_for_ajax
  step "I save a press release"
end