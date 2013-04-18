Then(/^the press release page is created$/) do
  @british_council.press_release.status.text.should include "Press release #{@press_release.title} has been created."
end

Then(/^the document is displayed on the press release page$/) do
  step "the press release page is created"
  @british_council.press_release.document_name.text.should include @document.document_name
end