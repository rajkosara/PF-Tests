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

Then(/^the social media link is displayed in the footer$/) do
  @social_link = @british_council.home.footer.social_links.find do |thing|
    thing.text == @media_link_name
  end
  @social_link.text.should == @media_link_name
  @social_link[:href].should == @media_link_link
end

Then(/^the homepage is created$/) do
  @british_council.home.status.text.should include "Homepage This is the home page title has been created."
end

Then(/^all the fields are displayed correctly on the home page$/) do
  @british_council.home.caroucel.should have_promo_image
  @british_council.home.caroucel.cta_title.text.should == @image_promotion.button_text
  @british_council.home.caroucel.cta_title[:href].should == @image_promotion.destination
  @british_council.home.caroucel.sidebar.title.text.should == @image_promotion.title
  @british_council.home.caroucel.sidebar.summary.text.should == @image_promotion.summary
  @british_council.home.title.text.should == "This is the home page title"
  @british_council.home.body_column_one_body.text.should == "body col body text.... but why body twice"
  @british_council.home.body_column_two_body.text.should == "body col body the second one, text..."
  @british_council.home.body_links.first.text.should == "This is the first link title"
  @british_council.home.body_links.first[:href].should == "http://www.google.co.uk/"
  @british_council.home.body_links[1].text.should == "This is the second link title"
  @british_council.home.body_links[1][:href].should == "http://www.example.com/"
  @british_council.home.body_links[2].text.should == "This is the col two link"
  @british_council.home.body_links[2][:href].should == "http://www.chicken.co.uk/"
  @british_council.home.promo_box.each do |box|
    box.title.text.should == @image_promotion.title
    box.summary.should include @image_promotion.summary
    box.href[:href].should == @image_promotion.destination
    box.should have_image
  end
  @british_council.home.promo_box_with_links.each do |box|
    if Helpers::Config['country_site'] == ("Korea" || "Japan")
      box.title.text.should include @image_promotion.title
    else
      box.title.text.should include @image_promotion.title
    end
    box.href[:href].should == "http://www.google.co.uk/"
    box.should have_image
    box.links.each do |link|
      link[:href].should == "http://www.github.com/cucumber"
      link.text.should == "this is the title in this block"
    end
  end
end

When(/^I choose to edit the endeavour home page$/) do
  @british_council.home.edit_button.click
  @british_council.create_home_page_endeavour.three_column_heading.set "the 3rd col heading :) New and edited"
  @british_council.create_home_page_endeavour.save_button.click
end

When(/^I choose to edit the conqueror home page$/) do
  @british_council.home.edit_button.click
  @british_council.create_home_page_conqueror.body_content_title.set "This is the home pages NEW title"
  @british_council.create_home_page_conqueror.save_button.click
end

Then(/^the (endeavour|conqueror) homepage is edited correctly$/) do |thing|
  case thing
  when 'conqueror'
    @british_council.home.title.text.should == "This is the home pages NEW title"
  when 'endeavour'
    @british_council.home.third_column_heading.text.should == "the 3rd col heading :) New and edited"
  end
end


Then(/^the facebook wiget is displayed on the homepage$/) do
  @british_council.home.should have_facebook_wiget
  @british_council.home.facebook_wiget.text.should include "Facebook"
end

Then(/^the facebook wiget is not displayed on the homepage$/) do
  @british_council.home.should_not have_facebook_wiget
end

Then(/^the edit button should not be displayed on the home page$/) do
  @british_council.home.should_not have_edit_button
end

Then(/^the description and title meta tag is displayed on the (endeavour|conqueror) home page$/) do |thing|
  @british_council.home.description_meta_tag[:content].should == "this is the body col summary text"
  @british_council.home.title_meta_tag.text.should include "This is the home page title"
end