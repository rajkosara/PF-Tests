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

When(/^I search for the pretend page$/) do
  @british_council.home.header.search_bar.link_click
  @british_council.home.header.search_bar.box.set "pretend page"
  @british_council.home.header.search_bar.submit.click
end

Then(/^the pretend page is not displayed in the search results$/) do
  @british_council.search_results.no_results.text.should == "Your search yielded no results"
end

When(/^I search for the created image$/) do
  @british_council.home.header.search_bar.link_click
  @british_council.home.header.search_bar.box.set @image.title
  @british_council.home.header.search_bar.submit.click
end

Then(/^the image is not displayed in the search results$/) do
  step "the pretend page is not displayed in the search results"
end