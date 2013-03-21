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

Then(/^the legal info is displayed on the home page footer$/) do
  @british_council.home.footer.legal_text.text.should include @legal_text
end

Then(/^the menu link is displayed on the home page$/) do
  @promo = @british_council.home.header.promo_links.find do |thing|
    thing.text == @promo_title
  end
  @promo.text == @promo_title
end