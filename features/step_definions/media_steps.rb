When /^I add an image to the media library$/ do
  @british_council.add_image.media_fields.title.set @image.title
  @british_council.add_image.media_fields.description.set @image.description
  @british_council.add_image.image_path.set @image.path
  @british_council.add_image.image_upload_button.click
  wait_for_ajax #this waits for the throbber to disappear
  #Timeout.timeout(30) { sleep(0.1) until @british_council.add_image.throbber.displayed?}
  @british_council.add_image.copyright_info.set @image.copyright_info
  @british_council.add_image.media_fields.save_button.click
end