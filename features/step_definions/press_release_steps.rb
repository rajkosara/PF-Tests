Then(/^the press release page is created$/) do
  @british_council.press_release.status.text.should include "Press release #{@press_release.title} has been created."
end

Then(/^the document is displayed on the press release page$/) do
  step "the press release page is created"
  @british_council.press_release.document_name.text.should include @document.document_name
end

Then(/^the required fileds are displayed on the press release page$/) do
  @british_council.press_release.title.text.should == @press_release.title
  @british_council.press_release.publish_date.text.should == @press_release.publish_date.strftime("%A,%e %B, %Y")
  @british_council.press_release.body.text.should == @press_release.body
  @british_council.press_release.notes_to_editor.text.should == @press_release.notes_to_editor
  @british_council.press_release.about_the_british_council.text.should == @press_release.about_the_british_council
end