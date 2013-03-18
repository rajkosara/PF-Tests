Then(/^the ielts page is created$/) do
  @british_council.ielts.status.text.should include "IELTS #{@ielts.title} has been created."
end

When(/^I choose to edit an ielts page$/) do
  @british_council.ielts.edit_button.click
end

When(/^the edited ielts title is displayed on the ielts page$/) do
  @british_council.ielts.status.text.should include "IELTS #{@ielts.title} EDITED has been updated"
  @british_council.ielts.title.text.should == "#{@ielts.title} EDITED"
end

When(/^I choose to the translate an ielts page$/) do
  @british_council.ielts.translate_button.click
end

Then(/^the translated ielts page is displayed$/) do
  @british_council.ielts.title.text.should == "#{@ielts.title} TRANSLATED"
end

Then(/^the ielts page is displayed correctly displayed$/) do
  @british_council.ielts.title.text.should == @ielts.title
  @british_council.ielts.tab_one_title.text.should == @ielts.tab_one_title
  @british_council.ielts.tab_one_top_body.text.should == @ielts.tab_one_top_body
  @british_council.ielts.tab_one_links_title.text.should == @ielts.tab_one_links_title
  @british_council.ielts.tab_one_bottom_body.text.should == @ielts.tab_one_bottom_body
  @british_council.ielts.tab_two_title.click
  @british_council.ielts.tab_two_title.text.should == @ielts.tab_two_title
  @british_council.ielts.tab_two_top_body.text.should == @ielts.tab_two_top_body
  @british_council.ielts.tab_two_bottom_body.text.should == @ielts.tab_two_bottom_body
  @british_council.ielts.tab_three_title.click
  @british_council.ielts.tab_three_title.text.should == @ielts.tab_three_title
  @british_council.ielts.tab_three_top_body.text.should == @ielts.tab_three_top_body
  @british_council.ielts.tab_three_bottom_body.text.should == @ielts.tab_three_bottom_body
  @british_council.ielts.tab_four_title.click
  @british_council.ielts.tab_four_title.text.should == @ielts.tab_four_title
  @british_council.ielts.tab_four_top_body.text.should == @ielts.tab_four_top_body
  @british_council.ielts.tab_four_bottom_body.text.should == @ielts.tab_four_bottom_body
end