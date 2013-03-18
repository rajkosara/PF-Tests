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