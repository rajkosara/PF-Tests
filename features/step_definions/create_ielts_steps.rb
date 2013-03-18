When(/^the create ielts page is displayed$/) do
  @british_council.create_ielts.should be_displayed
end

When(/^I submit a ielts page$/) do
  step "the create ielts page is displayed"
  @british_council.create_ielts.title.set @ielts.title
  @british_council.create_ielts.tab_one_title.set @ielts.tab_one_title
  @british_council.create_ielts.tab_one_summary.set @ielts.tab_one_summary
  @british_council.create_ielts.tab_one_top_body.native.send_keys @ielts.tab_one_top_body
  @british_council.create_ielts.tab_one_links_title.native.send_keys @ielts.tab_one_links_title
  @british_council.create_ielts.tab_one_bottom_body.native.send_keys @ielts.tab_one_bottom_body
  scroll_to_start_of_page
  @british_council.create_ielts.tab_two.click
  @british_council.create_ielts.tab_two_title.set @ielts.tab_two_title
  @british_council.create_ielts.tab_two_top_body.native.send_keys @ielts.tab_two_top_body
  @british_council.create_ielts.tab_two_bottom_body.native.send_keys @ielts.tab_two_bottom_body
  scroll_to_start_of_page
  @british_council.create_ielts.tab_three.click
  @british_council.create_ielts.tab_three_title.set @ielts.tab_three_title
  @british_council.create_ielts.tab_three_top_body.native.send_keys @ielts.tab_three_top_body
  @british_council.create_ielts.tab_three_bottom_body.native.send_keys @ielts.tab_three_bottom_body
  scroll_to_start_of_page
  @british_council.create_ielts.tab_four.click
  @british_council.create_ielts.tab_four_title.set @ielts.tab_four_title
  @british_council.create_ielts.tab_four_top_body.native.send_keys @ielts.tab_four_top_body
  @british_council.create_ielts.tab_four_bottom_body.native.send_keys @ielts.tab_four_bottom_body
  @british_council.create_ielts.links_title.set @ielts.links_title
  @british_council.create_ielts.save_button.click
end

When(/^I submit a ielts page without a title$/) do
  step "the create ielts page is displayed"
  @british_council.create_ielts.tab_one_title.set @ielts.tab_one_title
  @british_council.create_ielts.tab_one_summary.set @ielts.tab_one_summary
  @british_council.create_ielts.tab_one_top_body.native.send_keys @ielts.tab_one_top_body
  @british_council.create_ielts.tab_one_links_title.native.send_keys @ielts.tab_one_links_title
  @british_council.create_ielts.tab_one_bottom_body.native.send_keys @ielts.tab_one_bottom_body
  scroll_to_start_of_page
  @british_council.create_ielts.tab_two.click
  @british_council.create_ielts.tab_two_title.set @ielts.tab_two_title
  @british_council.create_ielts.tab_two_top_body.native.send_keys @ielts.tab_two_top_body
  @british_council.create_ielts.tab_two_bottom_body.native.send_keys @ielts.tab_two_bottom_body
  scroll_to_start_of_page
  @british_council.create_ielts.tab_three.click
  @british_council.create_ielts.tab_three_title.set @ielts.tab_three_title
  @british_council.create_ielts.tab_three_top_body.native.send_keys @ielts.tab_three_top_body
  @british_council.create_ielts.tab_three_bottom_body.native.send_keys @ielts.tab_three_bottom_body
  scroll_to_start_of_page
  @british_council.create_ielts.tab_four.click
  @british_council.create_ielts.tab_four_title.set @ielts.tab_four_title
  @british_council.create_ielts.tab_four_top_body.native.send_keys @ielts.tab_four_top_body
  @british_council.create_ielts.tab_four_bottom_body.native.send_keys @ielts.tab_four_bottom_body
  @british_council.create_ielts.links_title.set @ielts.links_title
  step "I save the ielts page"
end

Then(/^a "(.*?)" error message is displayed on the create ielts page$/) do |error_message|
  @british_council.create_general_info.error_message.text.should include error_message
end

When(/^I save the ielts page$/) do
  @british_council.create_ielts.save_button.click
end

When(/^I edit the ielts title on the create ielts page$/) do
  @british_council.create_ielts.title.set "#{@ielts.title} EDITED"
  step "I save the ielts page"
end

When(/^I create an ielts page$/) do
  step "When I navigate to the create ielts page"
  step "And I submit a ielts page"
end

When(/^I translate the ielts page$/) do
  @british_council.create_ielts.title.set "#{@ielts.title} TRANSLATED"
  step "I save the ielts page"
end