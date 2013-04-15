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