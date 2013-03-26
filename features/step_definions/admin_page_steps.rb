Then /^the admin page should be displayed$/ do
  @british_council.administration.should be_displayed
end

When(/^I enter some legal text on the site info page$/) do
  @legal_text = "This is some super awesome legal text"
  @british_council.site_info.legal_info.native.send_keys @legal_text
  @british_council.site_info.save_button.click
end

When(/^I create a social media link$/) do
  @facebook = "http://www.facebook.com/TheGoodLordAbove/"
  @twitter = "https://twitter.com/"
  @youtube = "http://www.youtube.co.uk/"
  @linkedin = "http://www.linkedin.com/"
  @myArry = [@facebook, @twitter, @youtube, @linkedin]
  @media_link_link = @myArry.sample
  @media_link_name = "media link #{Time.current.strftime("%T")} #{String.random(4)}"
  @british_council.add_social_media_link.link.set @media_link_link
  @british_council.add_social_media_link.name.set @media_link_name
  @british_council.add_social_media_link.save_button.click
end

When(/^I choose for the social media link to be displayed on the footer$/) do
  @the_row = @british_council.manage_social_media_links.social_link_rows.find do |thing|
    thing.name[:value] == @media_link_name
  end
  @the_row.checkbox.click
  @british_council.manage_social_media_links.save_button.click
end