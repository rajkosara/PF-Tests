When(/^I add an document to the media library$/) do
  step "I enter a title for a document"
  step "I enter a description for a document"
  step "I enter a path for a document and click the upload"
  step "I enter an expiration date for a document"
  step "I save a document"
end

Then(/^the document is added to the media library$/) do
  @british_council.document.status.text.should include "Media document #{@document.title} has been created."
end

Then(/^I enter a title for a document$/) do
  @british_council.add_document.media_fields.title.set @document.title
end

Then(/^I enter a description for a document$/) do
  @british_council.add_document.media_fields.description.set @document.description
end

Then(/^I enter a path for a document and click the upload$/) do
  @british_council.add_document.document_path.set @document.path
  @british_council.add_document.document_upload_button.click
  wait_for_ajax
end

Then(/^I enter an expiration date for a document$/) do
  @british_council.add_document.media_fields.expiration_tab.click
  @british_council.add_document.media_fields.expiration_date.set @document.expiration_date
end

Then(/^I save a document$/) do
  @british_council.add_document.media_fields.save_button.click
end

When(/^I add an (pdf|doc|docx|ppt|xls) document to the media library$/) do |doc_type|
  step "I enter a title for a document"
  step "I enter a description for a document"
  case doc_type
  when 'pdf'
    step "I enter a path for a document and click the upload"
  when 'doc'
    @british_council.add_document.document_path.set @document.doc_path
    @british_council.add_document.document_upload_button.click
  when 'docx'
    @british_council.add_document.document_path.set @document.docx_path
    @british_council.add_document.document_upload_button.click
  when 'ppt'
    @british_council.add_document.document_path.set @document.ppt_path
    @british_council.add_document.document_upload_button.click
  when 'xls'
    @british_council.add_document.document_path.set @document.xls_path
  @british_council.add_document.document_upload_button.click
  end
  step "I enter an expiration date for a document"
  step "I save a document"
end