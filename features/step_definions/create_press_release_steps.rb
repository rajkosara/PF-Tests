When(/^I submit a press release page$/) do
  @british_council.create_press_release.title.set @press_release.title
  @british_council.create_press_release.publish_date.set @press_release.publish_date
  @british_council.create_press_release.summary.set @press_release.summary
  @british_council.create_press_release.body.native.send_keys @press_release.body
  @british_council.create_press_release.notes_to_editor.native.send_keys @press_release.notes_to_editor
  @british_council.create_press_release.about_the_british_council.native.send_keys @press_release.about_the_british_council
  @british_council.create_press_release.save_button.click
end