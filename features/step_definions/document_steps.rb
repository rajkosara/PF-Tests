When(/^I add an document to the media library$/) do
  @british_council.add_document.media_fields.title.set @document.title
  @british_council.add_document.media_fields.description.set @document.description
  @british_council.add_document.document_path.set @document.path
  @british_council.add_document.document_upload_button.click
  wait_for_ajax
  @british_council.add_document.media_fields.expiration_tab.click
  @british_council.add_document.media_fields.expiration_date.set @document.expiration_date
  @british_council.add_document.media_fields.save_button.click
end

Then(/^the document is added to the media library$/) do
  @british_council.document.status.text.should include "Media document #{@document.title} has been created."
end