Then /^the create general info page is displayed$/ do
  @british_council.create_general_info.should be_displayed
end

Then /^the create general info page is not displayed$/ do
  Timeout.timeout(30) { sleep(0.1) while @british_council.create_general_info.displayed?}
  @british_council.create_general_info.should_not be_displayed
end

When /^I save the general info page$/ do
  @british_council.create_general_info.save_button.click
end

When /^I submit a general info page$/ do
  step "the create general info page is displayed"
  step "I enter a title for the general info page"
  step "I enter a summary for the general info page"
  step "I enter a body for the general info page"
  step "I save the general info page"
end

When(/^I submit a general info page with an image$/) do
  step "the create general info page is displayed"
  step "I enter a title for the general info page"
  @british_council.create_general_info.image_tab.click
  wait_for_ajax
  @british_council.create_general_info.image_library.select_checkboxes.first.click
  wait_for_ajax
  step "I enter a summary for the general info page"
  step "I enter a body for the general info page"
  step "I save the general info page"
end

When(/^I submit a general info page with an document$/) do
  step "the create general info page is displayed"
  step "I enter a title for the general info page"
  step "I open the document tab on the general info"
  step "I select the first document in the list on the general info page"
  step "I enter a summary for the general info page"
  step "I enter a body for the general info page"
  step "I save the general info page"
end

When /^I submit a general info page with a custom url filename$/ do
  step "I enter a title for the general info page"
  step "I enter a body for the general info page"
  step "I open the url path settings on the create general info page"
  step "I enter a custom url filename for a create general info page"
  step "I save the general info page"
end

When /^I open the document tab on the general info$/ do
  @british_council.create_general_info.document_tab.click
end

When /^I enter a title for the general info page$/ do
  @british_council.create_general_info.title.set @general_info.title
end

When /^I enter a summary for the general info page$/ do
  @british_council.create_general_info.summary.set @general_info.summary
end

When /^I enter a body for the general info page$/ do
  @british_council.create_general_info.body.native.send_key @general_info.body
end

When /^I enter an external link for the general info page$/ do
  @british_council.create_general_info.external_link.first.title.set @general_info.external_link_title
  @british_council.create_general_info.external_link.first.link.set @general_info.external_link_link
end


When /^I submit a general info page without a title$/ do
  step "the create general info page is displayed"
  step "I enter a summary for the general info page"
  step "I enter a body for the general info page"
  step "I save the general info page"
end

When /^I submit a general info page without a body$/ do
  step "the create general info page is displayed"
  step "I enter a title for the general info page"
  step "I enter a summary for the general info page"
  step "I save the general info page"
end

When /^I submit a general info page with an external link$/ do
  step "the create general info page is displayed"
  step "I enter a title for the general info page"
  step "I enter a summary for the general info page"
  step "I enter a body for the general info page"
  step "I enter an external link for the general info page"
  step "I save the general info page"
end

When /^I submit a general info page with an internal link$/ do
  step "the create general info page is displayed"
  step "I enter a title for the general info page"
  step "I enter a summary for the general info page"
  step "I enter a body for the general info page"
  step "I enter an internal link for the general info page"
  step "I save the general info page"
end

When /^I enter an internal link for the general info page$/ do
  @british_council.create_general_info.internal_link.set @general_info_title
  #this code should work....
 
  @british_council.create_general_info.internal_link.native.send_keys :enter
  @british_council.create_general_info.internal_link.native.send_keys :arrow_down
  Timeout.timeout(30) { sleep(0.1) until @british_council.create_general_info.internal_link_dropdown.visible?}
  @british_council.create_general_info.internal_link.native.send_keys :arrow_down
  @british_council.create_general_info.internal_link.native.send_keys :enter
  Timeout.timeout(30) { sleep(0.1) while   @british_council.create_general_info.internal_link.text == @org_title}
end

Then /^a "(.*?)" error message is displayed on the create general info page$/ do |error_message|
  @british_council.create_general_info.error_message.text.should include error_message
end

When /^I enter a title with 70 characters for the general info page$/ do
  @title = String.random(70)
  @british_council.create_general_info.title.set @title
end

Then /^a zero characters remaining error message is displayed on the create general info page$/ do
  @british_council.create_general_info.counter_message.text.should include "Content limited to 60 characters, remaining: 0"
  @british_council.create_general_info.title.text.should_not == @title
end

Given /^I create a general info page$/ do
  step "I navigate to the create general info page"
  step "I submit a general info page"
  @general_info_title = @general_info.title
end

When /^I enter a title containing some punctuation marks for a general info page$/ do
  @british_council.create_general_info.title.set 'Title with punctuation marks " _ : | {} & @ /'
end

When /^I enter a title of "(.*?)" for the general info page$/ do |title|
  @british_council.create_general_info.title.set title
end

When /^I enter a title containing some punctuation marks$/ do
  @british_council.create_general_info.title.set 'Title with punctuation marks " _ : | {} & @ /'
end

When /^I open the url path settings on the create general info page$/ do
  @british_council.create_general_info.meta_config.url_path_setting.click
end

Then /^the generate automatic URL alias is checked by default on the create general info page$/ do
  @british_council.create_general_info.meta_config.url_path_settings.generate_auto_url_checkbox.should be_checked
end

Then /^the filename field is disabled by default on the create general info page$/ do
  @british_council.create_general_info.meta_config.url_path_settings.filename[:disabled] == true
end

When /^I enter a custom url filename for a create general info page$/ do
  @british_council.create_general_info.meta_config.url_path_settings.generate_auto_url_label.click
  @british_council.create_general_info.meta_config.url_path_settings.generate_auto_url_checkbox.should_not be_checked
  @british_council.create_general_info.meta_config.url_path_settings.filename.set @general_info.alternate_filename
end

When(/^search for my created document on the general info page$/) do
  step "I open the document tab on the general info"
  wait_for_ajax
  @british_council.create_general_info.document_library.internal_name.set @document.title
  wait_for_ajax
  @british_council.create_general_info.document_library.apply_button.click
  wait_for_ajax
end

Then(/^the created document is displayed on the general info page$/) do
  @british_council.create_general_info.document_library.select_checkboxes.size == 1
  @british_council.create_general_info.document_library.table_internal_name.pop.text.should == @document.title
end

When(/^I select the first document in the list on the general info page$/) do
  @british_council.create_general_info.document_library.select_checkboxes.first.click
  wait_for_ajax
end

When(/^I remove the document from the general info page$/) do
  step "I open the document tab on the general info"
  wait_for_ajax
  @british_council.create_general_info.document_library.remove_document.click
  wait_for_ajax
  step "I save the general info page"
end

When(/^I submit a general info page with a show hide$/) do
  step "the create general info page is displayed"
  step "I enter a title for the general info page"
  step "I enter a summary for the general info page"
  step "I enter a body for the general info page"
  @british_council.create_general_info.show_hide_tab.click
  @british_council.create_general_info.show_hide_title.set @general_info.show_hide_title
  @british_council.create_general_info.show_hide_body.set @general_info.show_hide_body
  step "I save the general info page"
end


When(/^I submit a general info page with a cta with an external link$/) do
  step "the create general info page is displayed"
  step "I enter a title for the general info page"
  step "I enter a summary for the general info page"
  step "I enter a body for the general info page"
  @british_council.create_general_info.add_cta_tab.click
  @british_council.create_general_info.add_cta.title.set @general_info.cta.title
  @british_council.create_general_info.add_cta.url.set @general_info.cta.url
  @british_council.create_general_info.add_cta.strapline.set @general_info.cta.strapline
  step "I save the general info page"
end

When(/^I submit a general info page with a cta with an internal link$/) do
  step "the create general info page is displayed"
  step "I enter a title for the general info page"
  step "I enter a summary for the general info page"
  step "I enter a body for the general info page"
  @british_council.create_general_info.add_cta_tab.click
  @british_council.create_general_info.add_cta.title.set @general_info.cta.title
  @british_council.create_general_info.add_cta.url.set @landing_page.internal_url
  @british_council.create_general_info.add_cta.strapline.set @general_info.cta.strapline
  step "I save the general info page"
end

When(/^I create a general info page a place it under the course page$/) do
  step "I navigate to the create general info page"
  step "the create general info page is displayed"
  step "I enter a title for the general info page"
  step "I enter a summary for the general info page"
  step "I enter a body for the general info page"
  sleep 5
  @british_council.create_general_info.meta_config.menu_tab.click
  @british_council.create_general_info.meta_config.menu_settings.enable_menu.click
  @british_council.create_general_info.meta_config.menu_settings.title.set @general_info.menu_title
  @british_council.create_general_info.meta_config.menu_settings.parent_menu.select @course.menu_title[0...27]
  step "I publish a general info"
  step "I save the general info page"
  step "the general info page is created"
end

When /^I publish a general info$/ do
  @british_council.create_general_info.meta_config.publish_tab.click
  @british_council.create_general_info.meta_config.publish_settings.publish_status.click
end

Given(/^I create a general info page with an image$/) do
  step "I navigate to the create general info page"
  step "the create general info page is displayed"
  step "I publish a general info"
  step "I submit a general info page with an image"
end