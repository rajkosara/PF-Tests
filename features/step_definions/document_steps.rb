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

When(/^I add an gif document to the media library$/) do
  @british_council.add_document.document_path.set @document.gif_path
end

Then(/^an document type error is displayed on the add document page$/) do
  @british_council.add_document.document_error.text.should include "The selected file #{@document.gif} cannot be uploaded"
end

When(/^I add an invaild sized document to the media library$/) do
  @british_council.add_document.document_path.set @document.large_path
  @british_council.add_document.document_upload_button.click
  wait_for_ajax
end

Then(/^an document size error is displayed on the add document page$/) do
  @british_council.add_document.document_error.text.should include "The file #{@document.large} could not be saved, because it exceeds 2 MB"
end

When(/^I add an document to the media library without a tile$/) do
  step "I enter a description for a document"
  step "I enter a path for a document and click the upload"
  step "I enter an expiration date for a document"
  step "I save a document"
end

Then(/^a "(.*?)" error message is displayed on the add document page$/) do |error_message|
  @british_council.add_document.document_error.text.should include error_message
end

Given(/^I create a document in the media library$/) do
  step "I navigate to the add document page"
  step "I add an document to the media library"
  step "the document is added to the media library"
end

When(/^I choose to translate the document$/) do
  @british_council.add_document.translate_button.click
  step "wait for translate page to be displayed"
  step "I click add translation on the translate page"
  @british_council.add_document.media_fields.title.set "#{@document.title} Tranlated"
end

Then(/^the document is translated$/) do
  @british_council.add_document.media_fields.title.set "#{@document.title} Tranlated"
end