Then /^the landing page is created$/ do
  @british_council.landing_page.status.text.should include "Landing page #{@landing_page.title} has been created."
  step "I save the landing page url"
end

Then /^the landing page is updated$/ do
  @british_council.landing_page.status.text.should include "Landing page #{@landing_page.title} has been updated."
end

Given /^I choose to the edit landing page$/ do
  @british_council.landing_page.edit_button.click
  step "wait for edit landing page to be displayed"
end

Given /^I choose to the translate a landing page$/ do
  @british_council.landing_page.translate_button.click
  step "wait for translate page to be displayed"
end

Given /^I save the landing page url$/ do
  @landing_page.url = @british_council.landing_page.current_url
end

Then /^the landing page is displayed with the edited values$/ do
  step "the landing page is updated"
  @british_council.landing_page.body.text.should include "edited"
end

Then /^the edit button is not displayed$/ do
  @british_council.landing_page.should_not have_edit_button
end

Then /^the page is displayed on the listing page$/ do
  Timeout.timeout(30) { sleep(0.1) until @british_council.landing_page.title.visible?}
  @british_council.landing_page.first_child_title.text.should include @org_title
end

Then /^the general info page and landing page are displayed in the correct order$/ do
  Timeout.timeout(30) { sleep(0.1) until @british_council.landing_page.first_child_title.visible?}
  @british_council.landing_page.first_child_title.text.should == @general_info_title
  @british_council.landing_page.second_child_title.text.should == @landing_page.title
  @british_council.landing_page.second_child_summary.text.should == @landing_page.summary
end

Then /^two columns are displayed on the landing page$/ do
  @british_council.landing_page.two_column.text.should include @general_info_title
  @british_council.landing_page.two_column.text.should include @landing_page.title
end

Then /^the filename displays the custom url filename on the landing page$/ do
  @british_council.landing_page.filename.should == @landing_page.alternate_filename.gsub(" ", "-").downcase
end

Then /^the translated menu link is displayed on the main menu$/ do
  @translated_menu = @british_council.landing_page.header.main_menu.menu_item.select do |menu_title|
    menu_title.text.include? "#{@landing_page.menu_title} Translated"
  end
  @translated_menu.size == 1
end

Then /^the translated menu link is not displayed on the main menu$/ do
  @translated_menu = @british_council.landing_page.header.main_menu.menu_item.select do |menu_title|
    menu_title.text.include? "#{@landing_page.menu_title} Translated"
  end
  @translated_menu.size == 0
end

Then /^the teaching centre page and landing page are displayed in the correct order$/ do
  Timeout.timeout(30) { sleep(0.1) until @british_council.landing_page.title.visible?}
  @british_council.landing_page.first_child_title.text.should ==  @teaching_centre.title
  @british_council.landing_page.second_child_title.text.should ==  @landing_page.title
  @british_council.landing_page.child_summary.text.should == @landing_page.summary
end

Then(/^the general info page is displayed with an image on the landing page$/) do
  @british_council.landing_page.image.size == 1
end