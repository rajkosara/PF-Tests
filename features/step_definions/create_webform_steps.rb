When(/^I submit a webform$/) do
  @webform_title = "webform title #{Time.current.strftime("%T")} #{String.random(4)}"
  @british_council.create_webform.title.set @webform_title
  @webform_intro = "webform intro #{Time.current.strftime("%T")} #{String.random(4)}"
  @british_council.create_webform.introduction.native.send_keys @webform_intro
  @british_council.create_webform.save_button.click
end

Then(/^the webform is created$/) do
  @british_council.add_webform_component.status.text.should include "Webform #{@webform_title} has been created"
end

When(/^I add a text component to the webform$/) do
  @british_council.add_webform_component.new_component_box.set "component box"
  @british_council.add_webform_component.mandatory_checkbox.click
  @british_council.add_webform_component.add_button.click
  @british_council.add_webform_component.save_button.click
end

When(/^I view the created webform$/) do
  @british_council.add_webform_component.view_button.click
end

Then(/^the fields on the webform are displayed correctly$/) do
  @british_council.webform.title.text.should == @webform_title
  @british_council.webform.intro.text.should == @webform_intro
  @british_council.webform.text_box_label.text.should == "component box *"
  @british_council.webform.text_box.set "some text"
  @british_council.webform.submit_button.click
  @british_council.webform.confirmation.text.should == "Thank you, your submission has been received."
end