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
end

Given /^I enter a menu link for a landing page$/ do
  #I need to create a section for all the stuff that in in the tabs at the bottom of the screen
  @british_council.create_landing_page.meta_config.menu_tab.click
  @british_council.create_landing_page.meta_config.menu_settings.enable_menu.click
  @british_council.create_landing_page.meta_config.menu_settings.title.set @landing_page.menu_title
  @org_landing_page_menu_title = @landing_page.menu_title
  
end

Given /^I publish the landing page$/ do
  #create a section for the publish options tab
  @british_council.create_landing_page.meta_config.publish_tab.click
  @british_council.create_landing_page.meta_config.publish_status.click
end

Then /^the created landing pages menu is displayed in the menu list$/ do
  @british_council.create_landing_page.meta_config.menu_settings.parent_menu_options_text.should include @org_landing_page_menu_title
end