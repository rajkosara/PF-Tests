Then /^the general info page is created$/ do
  @british_council.general_info.status.text.should include "General info #{@general_info.title} has been created."
end

Then /^the external link is displayed on the general info page$/ do
  @british_council.general_info.external_link.text.should == @general_info.external_link_title
  @british_council.general_info.external_link[:href].should == "#{@general_info.external_link_link}/"
end