Then /^the admin page should be displayed$/ do
  @british_council.administration.should be_displayed
end

When(/^I enter some legal text on the site info page$/) do
  @legal_text = "some text #{Time.current.strftime("%T")} #{String.random(4)}"
  @british_council.site_info.contact_us.native.send_keys @legal_text
  @british_council.site_info.legal_info.native.send_keys @legal_text
  @british_council.site_info.save_button.click
  @british_council.site_info.status.text.should include "The configuration options have been saved."
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

Then(/^the entered legal text is displayed is on the site info page$/) do
  @british_council.site_info.legal_info.should include @legal_text
end

When(/^I index the content$/) do
  @british_council.cron_jobs.load
end

Then(/^the (default|Korean|Arabic|Japanese|Greek|Poland|Thailand) language is set correctly$/) do |lang|
  if lang == "default"
  @language
  case Helpers::Config['country_site']
  when 'Egypt'
    @language = "Arabic"
  when 'Japan'
    @language = "Japanese"
  when 'Korea'
    @language = "Korean"
  when 'Greece'
    @language = "Greek"
  when 'Training'
    @language = "Local"
  when 'Poland'
    @language = "Polish"
  when 'Thailand'
    @language = "Thai"
  end
  @british_council.regional_language.default_language.text.should == @language
  else
    puts "You need to add the language!!!!"
    #@british_council.regional_language.default_language.text.should == lang
  end
end

Then(/^the (Korea|Egypt|Japan|Greece) country is set correctly$/) do |country|
  @british_council.regional_settings.default_country.text.should == country
end