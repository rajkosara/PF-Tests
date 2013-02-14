Then /^the british council logo is displayed on the home page$/ do
  @british_council.home.header.bc_logo.should be_visible
end

Then /^the country is displayed on the home page$/ do
  @british_council.home.header.country_name.text.should == "#{Helpers::Config['country_site']}"
end

Then /^the header displays the language switcher$/ do
  @british_council.home.header.language_switcher.should be_visible
end

Then /^the header is displayed on the home page$/ do
  @british_council.home.should have_header
end

Then /^the footer is displayed on the home page$/ do
  @british_council.home.should have_footer
end

Then /^the header doesnt displays the language switcher$/ do
  @british_council.home.header.language_switcher.should_not be_visible
end