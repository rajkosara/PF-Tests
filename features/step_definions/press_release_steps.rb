Then /^the press released is saved$/ do
  @british_council.press_release.status_message.text.should include "Press release #{@press_release.title} has been created."
end

Then /^the title of the press release is displayed$/ do
  @british_council.press_release.title.text.should == "#{@press_release.title}"
end

Then /^the category of the press release is displayed in the url$/ do
  @british_council.press_release.current_url.should include @press_release.category.downcase
end

Then /^the category of the press release is displayed in the breadcrumb$/ do
  @british_council.press_release.breadcrumb.text.should include @press_release.category
end

Then /^the tag is displayed on the press release$/ do
  @british_council.press_release.tag.text.should include @press_release.tag
end

Then /^the path name is displayed on the press release$/ do
  @british_council.press_release.breadcrumb.text.should include @press_release.url_alias
  @british_council.press_release.current_url.should include @press_release.url_alias.downcase
end

Then /^the published date is displayed on the press release$/ do
  @british_council.press_release.publish_date.text.should include @press_release.publish_date[0] && @press_release.publish_date[1] && @press_release.publish_date[2]
end

Then /^the notes to editor is displayed on the press release$/ do
  @british_council.press_release.notes_to_editor.text.should include @press_release.notes_to_editor
end

Then /^the about the british council is displayed on the press release$/ do
  @british_council.press_release.about_the_british_council.text.should == "About the British Council: \n#{@press_release.about_the_british_council}"
end

Then /^the image is displayed on the press release$/ do
  @british_council.press_release.uploaded_image_name.should include @image.to_s
end

Then /^the documment is displayed on the press release$/ do
  @british_council.press_release.uploaded_document.text.should include @press_release.document_name
end

Then /^the body text is displayed on the press release$/ do
  @british_council.press_release.body.text.should include @press_release.body
end

Then /^the default fields are displayed on the press release$/ do
  step "the press released is saved"
  step "the title of the press release is displayed"
  step "the body text is displayed on the press release"
end