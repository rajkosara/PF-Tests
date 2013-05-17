When /^I add an image to the media library$/ do
  step "I enter a title on the add image page"
  #@british_council.add_image.internal_ref.set @image.internal_ref
  step "I enter a description on the add image page"
  step "I enter a image path on the add image page"
  step "I click the image upload button on the add image page"
  step "I enter copyright info on the add image page"
  #step "I enter a expiration date on the add image page"
  step "I click the save button on the add image page"
end

Then /^I create a image in the media library$/ do
  step "I navigate to the add image page"
  step "I add an image to the media library"
  step "the image is added to the media library"
end

Then /^I enter a expiration date on the add image page$/ do
  @british_council.add_image.media_fields.expiration_tab.click
  @british_council.add_image.media_fields.expiration_date.set @image.expiration_date
end

Then /^the image is added to the media library$/ do
  @british_council.image.status.text.should include "Media image #{@image.title} has been created."
  @british_council.image.image.each do |img|
    img.visible?
  end
end

When /^I add an (png|jpg|jpeg) image to the media library$/ do |image_format|
  step "I enter a title on the add image page"
  step "I enter a description on the add image page"

  case image_format
  when "png"
    step "I enter a image path on the add image page"
  when "jpg"
    @british_council.add_image.image_path.set @image.jpg_path
  when "jpeg"
    @british_council.add_image.image_path.set @image.jpeg_path
  end
  step "I click the image upload button on the add image page"
  wait_for_ajax
  step "I enter copyright info on the add image page"
  step "I click the save button on the add image page"
end

Then /^I enter a title on the add image page$/ do
  @british_council.add_image.media_fields.title.set @image.title
end

Then /^I enter a description on the add image page$/ do
  @british_council.add_image.media_fields.description.set @image.description
end

Then /^I enter a image path on the add image page$/ do
  @british_council.add_image.image_path.set @image.path
end

Then /^I click the image upload button on the add image page$/ do
  @british_council.add_image.image_upload_button.click
  wait_for_ajax
  #Timeout.timeout(30) {sleep(0.1) while @british_council.add_image.throbber.visible? }
end

Then /^I enter copyright info on the add image page$/ do
  @british_council.add_image.copyright_info.set @image.copyright_info
end

Then /^I click the save button on the add image page$/ do
  @british_council.add_image.media_fields.save_button.click
end

Then /^an image type error is displayed on the add image page$/ do
  @british_council.add_image.image_error.text.should include "The selected file #{@image.tif} cannot be uploaded"
end

Then /^I add an tif image to the media library$/ do
  @british_council.add_image.image_path.set @image.tif_path
end

When /^I add an invaild sized image to the media library$/ do
  @british_council.add_image.image_path.set @image.large_path
  wait_for_ajax
  step "I click the image upload button on the add image page"
end

Then /^an image size error is displayed on the add image page$/ do
  @british_council.add_image.image_error.text.should include "exceeding the maximum file size of 1 MB"
end

When /^I add an image to the media library without a tile$/ do
  step "I enter a description on the add image page"
  step "I enter a image path on the add image page"
  step "I click the image upload button on the add image page"
  wait_for_ajax
  step "I enter copyright info on the add image page"
  step "I click the save button on the add image page"
end

Then /^a "(.*?)" error message is displayed on the add image page$/ do |error_message|
  @british_council.add_image.image_error.text.should include error_message
end