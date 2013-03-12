Then /^the general info page is created$/ do
  @british_council.general_info.status.text.should include "General info #{@general_info.title} has been created."
end

Then /^the external link is displayed on the general info page$/ do
  @british_council.general_info.external_link.text.should == @general_info.external_link_title
  @british_council.general_info.external_link[:href].should == "#{@general_info.external_link_link}/"
end

Then /^the internal link is displayed on the general info page$/ do
  @british_council.general_info.internal_link.text.should == @general_info_title
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
  @british_council.general_info.filename.should == @general_info.alternate_filename.gsub(" ", "-").downcase
end

Then(/^the image is displayed on the general info page$/) do
  @british_council.general_info.image.should be_visible
end

Then(/^the document is displayed on the general info page$/) do
  @british_council.general_info.document_name.text.should == @document.document_name
end