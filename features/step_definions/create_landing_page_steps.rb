Then /^the create landing page page is displayed$/ do
  @british_council.create_landing_page.should be_displayed
end

When /^I save the landing page$/ do
  @british_council.create_landing_page.save_button.click
end

When /^I submit a landing page$/ do
  step "the create landing page page is displayed"
  step "I enter a title for the landing page"
  step "I enter a summary for the landing page"
  step "I enter a body for the landing page"
  step "I save the landing page"
end

When /^I enter a title for the landing page$/ do
  @british_council.create_landing_page.title.set @landing_page.title
end

When /^I enter a summary for the landing page$/ do
  @british_council.create_landing_page.summary.set @landing_page.summary
end

When /^I enter a body for the landing page$/ do
  @british_council.create_landing_page.body.native.send_keys @landing_page.body
end

Then /^the not authorized to access this page error is displayed$/ do
  @british_council.create_landing_page.authorized_message.text.should include "You are not authorized to access this page."
end

When /^I submit a landing page without a title$/ do
  step "the create landing page page is displayed"
  step "I enter a summary for the landing page"
  step "I enter a body for the landing page"
  step "I save the landing page"
end

Then /^a "(.*?)" error message is displayed on the create landing page page$/ do |error_message|
  @british_council.create_landing_page.error_message.text.should include error_message
end

When /^I enter a title with 70 characters for the landing page$/ do
  @title = String.random(70)
  @british_council.create_landing_page.title.set @title
end

Then /^a zero characters remaining error message is displayed on the create landing page$/ do
  @british_council.create_landing_page.counter_message.text.should include "Content limited to 60 characters, remaining: 0"
  @british_council.create_landing_page.title.text.should_not == @title
end

Given /^I create a published landing page$/ do
  step "I navigate to the create landing page page"
  step "I enter a menu link for a landing page"
  step "I publish the landing page"
  step "I submit a landing page"
  step "the landing page is created"
  @org_title = @landing_page.title
end

Given /^I enter a menu link for a landing page$/ do
  @british_council.create_landing_page.meta_config.menu_tab.click
  @british_council.create_landing_page.meta_config.menu_settings.enable_menu.click
  @british_council.create_landing_page.meta_config.menu_settings.title.set @landing_page.menu_title
  @org_landing_page_menu_title = @landing_page.menu_title
end

Given /^I publish the landing page$/ do
  @british_council.create_landing_page.meta_config.publish_tab.click
  @british_council.create_landing_page.meta_config.publish_settings.publish_status.click
end

Then /^the created landing pages menu is displayed in the menu list$/ do
  @british_council.create_landing_page.meta_config.menu_settings.parent_menu_options_text.should include @org_landing_page_menu_title[0...27]
end

Then /^wait for edit landing page to be displayed$/ do
  Timeout.timeout(30) { sleep(0.1) until @british_council.create_landing_page.current_url.include? "/edit"}
  @british_council.create_landing_page.current_url.should include "/edit"
end

When /^I edit the published landing page fields$/ do
  @british_council.create_landing_page.body.native.send_keys "edited"
  step "I save the landing page"
end

When /^I enter a child page into the child listing page management$/ do
  #i dont like this, i will at making it better when a time comes
  @british_council.create_landing_page.list_management.set @org_title
  @british_council.create_landing_page.list_management.native.send_keys :arrow_down
  Timeout.timeout(30) { sleep(0.1) until @british_council.create_landing_page.list_dropdown.visible?}
  @british_council.create_landing_page.list_management.native.send_keys :arrow_down
  @british_council.create_landing_page.list_management.native.send_keys :enter
  Timeout.timeout(30) { sleep(0.1) while @british_council.create_landing_page.list_management.text == @org_title}
  wait_for_ajax
  step "I save the landing page"
end

When /^I enter the general info page and landing page as children$/ do
  #enter general info page
  @british_council.create_landing_page.list_management.set @general_info_title
  @british_council.create_landing_page.list_management.native.send_keys :arrow_down
  Timeout.timeout(30) { sleep(0.1) until @british_council.create_landing_page.list_dropdown.visible?}
  @british_council.create_landing_page.list_management.native.send_keys :arrow_down
  @british_council.create_landing_page.list_management.native.send_keys :enter
  Timeout.timeout(30) { sleep(0.1) while @british_council.create_landing_page.list_management.text == @general_info_title}
  #add another children item
  @british_council.create_landing_page.add_another_item.click
  Timeout.timeout(30) { sleep(0.1) until @british_council.create_landing_page.list_management_second.visible?}
  #enter landing page
  @british_council.create_landing_page.list_management_second.set @landing_page.title
  @british_council.create_landing_page.list_management_second.native.send_keys :arrow_down
  Timeout.timeout(30) { sleep(0.1) until @british_council.create_landing_page.list_dropdown.visible?}
  @british_council.create_landing_page.list_management_second.native.send_keys :arrow_down
  @british_council.create_landing_page.list_management_second.native.send_keys :enter
  Timeout.timeout(30) { sleep(0.1) while @british_council.create_landing_page.list_management_second.text == @landing_page.title}
  wait_for_ajax
end

When /^I open the url path settings on the create landing page page$/ do
  @british_council.create_landing_page.meta_config.url_path_setting.click
end

Then /^the generate automatic URL alias is checked by default on the create landing page page$/ do
  @british_council.create_landing_page.meta_config.url_path_settings.generate_auto_url_checkbox.should be_checked
end

Then /^the filename field is disabled by default on the create landing page page$/ do
  @british_council.create_landing_page.meta_config.url_path_settings.filename[:disabled] == true
end

When /^I select to display the landing page with a two column layout without images$/ do
  @british_council.create_landing_page.two_column_checkbox.click
end