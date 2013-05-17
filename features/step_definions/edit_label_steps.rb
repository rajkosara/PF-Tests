When /^I edit the faq display label on the edit faq settings page$/ do
  @display_label = "My display label #{Time.current.strftime("%T")} #{String.random(4)}"
  @british_council.edit_faq_settings.display_label.set @display_label
end

When /^I save the edit faq settings page$/ do
  @british_council.edit_faq_settings.save_button.click
end