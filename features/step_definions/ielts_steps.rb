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
  @british_council.ielts.tab_two_title.click
  @british_council.ielts.tab_two_title.text.should == @ielts.tab_two_title
  @british_council.ielts.tab_two_top_body.text.should == @ielts.tab_two_top_body
  @british_council.ielts.tab_three_title.click
  @british_council.ielts.tab_three_title.text.should == @ielts.tab_three_title
  @british_council.ielts.tab_three_top_body.text.should == @ielts.tab_three_top_body
  @british_council.ielts.tab_four_title.click
  @british_council.ielts.tab_four_title.text.should == @ielts.tab_four_title
  @british_council.ielts.tab_four_top_body.text.should == @ielts.tab_four_top_body
end

Then(/^the document is displayed correctly on the ielts page$/) do
  @british_council.ielts.document_name.text.should == @document.document_name
  @british_council.ielts.should have_document_name
end

Then(/^the cta is displayed correctly on the ielts page$/) do
  @british_council.ielts.cta_with_image.each do |thing|
    thing.should have_cta_image
  end

  #first tab
  @british_council.ielts.cta_with_image.first.cta_title.text.should == @ielts.cta.title  
  @british_council.ielts.cta_with_image.first.strapline.text.should include @ielts.cta.strapline

  #second tab
  @british_council.ielts.tab_two_title.click
  @british_council.ielts.cta_with_image[1].cta_title.text.should == @ielts.cta.title
  @british_council.ielts.cta_with_image[1].strapline.text.should include @ielts.cta.strapline

  #third tab
  @british_council.ielts.tab_three_title.click
  @british_council.ielts.cta_with_image[2].cta_title.text.should == @ielts.cta.title
  @british_council.ielts.cta_with_image[2].strapline.text.should include @ielts.cta.strapline

  #fourth tab
  @british_council.ielts.tab_four_title.click
  @british_council.ielts.cta_with_image[3].cta_title.text.should == @ielts.cta.title
  @british_council.ielts.cta_with_image[3].strapline.text.should include @ielts.cta.strapline

  @british_council.ielts.cta_box.title_link.text == @ielts.cta.title
  @british_council.ielts.cta_box.header.text.should include @ielts.cta.header
  @british_council.ielts.cta_box.supporting_text.text == @ielts.cta.supporting_text
  
  @british_council.ielts.cta_box.title_link[:href] == @ielts.cta.url

end

Given(/^I create an ielts page with english and korea versions$/) do
  steps %Q{
       Given I create a punlished ielts page
    And I choose to the translate an ielts page
    And I click add translation on the translate page
    And I translate the ielts page
    And the translated ielts page is displayed
  }
end

When(/^the korean tab of the lan switcher is selected on the ielts page$/) do
  step "the header displays the language switcher"
  @british_council.ielts.header.language_switcher.korea[:class].should include "active"
end

When(/^I click the english tab of the lan switcher$/) do
  @british_council.ielts.header.language_switcher.english.click
end

Then(/^the english version of the page is displayed$/) do
  Timeout.timeout(30){sleep(0.1) until @british_council.ielts.title.visible?}
  @british_council.ielts.title.text.should_not include "TRANSLATED"
end
