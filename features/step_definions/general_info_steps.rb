Then /^the general info page is created$/ do
  @british_council.general_info.status.text.should include "General info #{@general_info.title} has been created."
end

Then /^the external link is displayed on the general info page$/ do
  @british_council.general_info.external_link.text.should == @general_info.external_link_title
  @british_council.general_info.external_link[:href].should == "#{@general_info.external_link_link}/"
end

Then /^the internal link is displayed on the general info page$/ do
  @british_council.general_info.links.first.text.should == @course.title
end

Then /^the filename of the general info page will not include the stop words$/ do
  @british_council.general_info.filename.should_not include("a" && "an" && "as" && "but" && "is" && "off" && "on" && "onto" && "the")
end

Then /^the filename of the general info page will not include the punctuation marks$/ do
  step "the create general info page is not displayed"
  @british_council.general_info.filename.should_not include('"' && '_' && ':' && '|' && '{' && '}' && '&' && '@' && '/')
end

Then /^the description meta tag is displayed on the general info page$/ do
  @british_council.general_info.description_meta_tag[:content].should == @general_info.summary
end

Then /^the title meta tag is displayed on the general info page$/ do
  @british_council.general_info.title_meta_tag.text.should include @general_info.title
end

Then /^the body is displayed on the general info page$/ do
  @british_council.general_info.body.text.should include @general_info.body
end

Then /^the title is displayed on the general info page$/ do
  @british_council.general_info.title.text.should include @general_info.title
end

Then /^the filename displays the custom url filename on the general info page$/ do
  @british_council.general_info.filename.should == @general_info.alternate_filename.gsub(" ", "%20")
end

Then(/^the image is displayed on the general info page$/) do
  @british_council.general_info.image.should be_visible
end

Then(/^the document is displayed on the general info page$/) do
  step "the general info page is created"
  @british_council.general_info.document_name.text.should == @document.document_name
end

When(/^I choose to edit the general info page$/) do
  @british_council.general_info.edit_button.click
end

Then(/^the document is not displayed on the general info page$/) do
  @british_council.general_info.should_not have_document_name
end

Then(/^the show hide is displayed on the general info page$/) do
  @british_council.general_info.show_hide_title.text.should == @general_info.show_hide_title
  @british_council.general_info.show_hide_body.text.should == @general_info.show_hide_body
end

Then(/^the CTA with an external link is displayed correctly on the general info page$/) do
  @number_of_ctas = @british_council.general_info.cta_box.collect do |thing|
    thing.title_link[:href] == @general_info.cta.url
  end
  @number_of_ctas.size == 2

  @british_council.general_info.cta_box.first.title_link.text == @general_info.cta.title
  @british_council.general_info.cta_box.first.strapline.text == @general_info.cta.strapline.upcase

  @british_council.general_info.cta_box.last.title_link.text == @general_info.cta.title
  @british_council.general_info.cta_box.last.strapline.text == @general_info.cta.strapline.upcase
end


Then(/^the CTA with an internal link is displayed correctly on the general info page$/) do
  @number_of_ctas = @british_council.general_info.cta_box.collect do |thing|
    thing.title_link[:href] == @landing_page.url
  end
  @number_of_ctas.size == 2

  @british_council.general_info.cta_box.first.title_link.text == @general_info.cta.title
  @british_council.general_info.cta_box.first.strapline.text == @general_info.cta.strapline.upcase

  @british_council.general_info.cta_box.last.title_link.text == @general_info.cta.title
  @british_council.general_info.cta_box.last.strapline.text == @general_info.cta.strapline.upcase
end

Then(/^the landing page and the course page are in the breadcrumbs on the general info page$/) do
  @british_council.general_info.breadcrumbs.text.should include("Home", @landing_page.menu_title, @course.menu_title)
end

Then(/^the course is displayed and the landing pag is not$/) do
  @british_council.general_info.secondary_navigation_menu.parent.text.should == @course.menu_title
  @british_council.general_info.secondary_navigation_menu.children.first.text.should == @general_info.menu_title
end

Then(/^the contact us block should be displayed on the general info page$/) do
  puts @british_council.general_info.contact_us_block.should be_visible
end