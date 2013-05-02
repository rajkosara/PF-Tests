Then(/^the arts landing page is created$/) do
  @british_council.arts_landing_page.status.text.should include "Arts landing page #{@landing_page.title} has been created."
  @british_council.arts_landing_page.title.text.should == @landing_page.title
end

Then(/^the fields are displayed correctly on the arts landing page$/) do
  step "the arts landing page is created"
  @british_council.arts_landing_page.show_hide_title.text.should == "Show hide title"
  @british_council.arts_landing_page.promo_box.first.title.text.should == @image_promotion.title
  @british_council.arts_landing_page.promo_box[1].title.text.should == @general_info.title
  @british_council.arts_landing_page.promo_box.first.summary.should include @image_promotion.summary
  @british_council.arts_landing_page.promo_box[1].summary.should include @general_info.summary
  @british_council.arts_landing_page.promo_box.each do |thing|
    thing.should have_image
  end
  @british_council.arts_landing_page.promo_box.first.href[:href].should == @image_promotion.destination
  @british_council.arts_landing_page.sidebar_text_promotions.first.destination[:href].should include @image_promotion.destination
  @british_council.arts_landing_page.sidebar_text_promotions.first.title.text.should == @image_promotion.title
  @british_council.arts_landing_page.sidebar_text_promotions.first.summary.text.should == @image_promotion.summary
  @british_council.arts_landing_page.sidebar_text_promotions.first.should have_image
end