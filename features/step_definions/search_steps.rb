When(/^I search for the create general info page$/) do
  @british_council.home.header.search_bar.link_click
  @british_council.home.header.search_bar.box.set @general_info.title
  @british_council.home.header.search_bar.submit.click
end

Then(/^the created general info page is displayed in the search results$/) do
  @british_council.search_results.should_not have_no_results
  @british_council.search_results.title.first.text.should == @general_info.title
  @british_council.search_results.body.first.text.should include @general_info.body
end