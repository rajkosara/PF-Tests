When(/^I add an video to the media library$/) do
  step "the add video page is displayed"
  @british_council.add_video.media_fields.title.set @video.title
  @british_council.add_video.media_fields.description.set @video.description
  @british_council.add_video.video_url.set @video.video_url
  @british_council.add_video.media_fields.expiration_tab.click
  @british_council.add_video.media_fields.expiration_date.set @video.expiration_date
  step "I save a video on the create video page"
end

When(/^the add video page is displayed$/) do
  @british_council.add_video.should be_displayed
end

Then(/^the video is added to the media library$/) do
  @british_council.video.status.text.should include "Media video #{@video.title} has been created."
  @british_council.video.should have_player
end

When(/^I add an (youtube|vimeo|viddler) video to the media library$/) do |video_type|
  step "the add video page is displayed"
  @british_council.add_video.media_fields.title.set @video.title
  @british_council.add_video.media_fields.description.set @video.description
  case video_type
  when 'youtube'
    @british_council.add_video.video_url.set @video.video_url
  when 'vimeo'
    @british_council.add_video.video_url.set @video.vimeo
  when 'viddler'
    @british_council.add_video.video_url.set @video.viddler
  end
  @british_council.add_video.media_fields.expiration_tab.click
  @british_council.add_video.media_fields.expiration_date.set @video.expiration_date
  step "I save a video on the create video page"
end

Then(/^I save a video on the create video page$/) do
  @british_council.add_video.media_fields.save_button.click
end

When(/^I add an video to the media library without a title$/) do
  step "the add video page is displayed"
  @british_council.add_video.media_fields.description.set @video.description
  @british_council.add_video.video_url.set @video.video_url
  @british_council.add_video.media_fields.expiration_tab.click
  @british_council.add_video.media_fields.expiration_date.set @video.expiration_date
  step "I save a video on the create video page"
end

Then(/^a "(.*?)" error message is displayed on the add video page$/) do |error_message|
  @british_council.add_video.video_error.text.should include error_message
end

Then(/^I choose to edit the video$/) do
  @british_council.video.edit_button.click
end

Then(/^I choose to delete the video$/) do
  @british_council.add_video.delete_button.click
  Timeout.timeout(30){sleep(0.1) until @british_council.delete_page.displayed?}
  @british_council.delete_page.delete_button.click
end

Then(/^the video has been deleted$/) do
  @british_council.home.status.text.should include "Media video #{@video.title} has been deleted."
end

Given(/^I create a video in the media library$/) do
  step "I navigate to the add video page"
  step "I add an video to the media library"
  step "the video is added to the media library"
end