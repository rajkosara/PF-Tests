Then(/^the press release page is created$/) do
  @british_council.press_release.status.text.should include "Press release #{@press_release.title} has been created."
end

Then(/^the document is displayed on the press release page$/) do
  step "the press release page is created"
  @british_council.press_release.document_name.text.should include @document.document_name
end

Then(/^the required fileds are displayed on the press release page$/) do
  @british_council.press_release.title.text.should == @press_release.title
  @british_council.press_release.publish_date.text.should == @press_release.publish_date.strftime("%A, %e %B, %Y")
  @british_council.press_release.body.text.should == @press_release.body
  @british_council.press_release.notes_to_editor.text.should == @press_release.notes_to_editor
  @british_council.press_release.about_the_british_council.text.should == @press_release.about_the_british_council
end

Then(/^the internal link is displayed on the press release page$/) do
  step "the press release page is created"
  @british_council.press_release.internal_link.text.should == @course.title
end

Then(/^the external link is displayed on the press release page$/) do
  step "the press release page is created"
  @british_council.press_release.external_link.text.should == @press_release.external_link_title
  @british_council.press_release.external_link[:href].should == @press_release.external_link_link
end

Then(/^the promo is displayed on the press release page$/) do
  step "the press release page is created"
  @british_council.press_release.sidebar_text_promotions.last.title.text.should == @text_promotion.title
  @british_council.press_release.sidebar_text_promotions.last.summary.text.should == @text_promotion.summary
  @british_council.press_release.sidebar_text_promotions.last.destination[:href].should == @text_promotion.destination
end

Then(/^the url pattern is correct for a press release$/) do
  @british_council.press_release.current_url.should include "/about/press/"
end