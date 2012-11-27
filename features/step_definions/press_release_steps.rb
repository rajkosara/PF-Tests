Then /^the press released is saved$/ do
  @british_council.press_release.status_message.text.should include "Press release #{@press_release.title} has been created."
end

Then /^the title of the press release is displayed$/ do
  @british_council.press_release.title.text.should == "#{@press_release.title}"
end

Then /^the category of the press release is displayed in the url$/ do
  @british_council.press_release.current_url.should include @press_release.category.downcase
end

Then /^the category of the press release is displayed in the breadcrumb$/ do
  @british_council.press_release.breadcrumb.text.should include @press_release.category
end

Then /^the tag is displayed on the press release$/ do
  @british_council.press_release.tag.text.should include @press_release.tag
end

Then /^the path name is displayed on the press release$/ do
  @british_council.press_release.breadcrumb.text.should include @press_release.url_alias
  @british_council.press_release.current_url.should include @press_release.url_alias.downcase
end