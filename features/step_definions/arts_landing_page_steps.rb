Then(/^the arts landing page is created$/) do
  @british_council.arts_landing_page.status.text.should include "Arts landing page #{@landing_page.title} has been created."
  @british_council.arts_landing_page.title.text.should == @landing_page.title
end