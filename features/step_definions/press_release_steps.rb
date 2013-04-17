Then(/^the press release page is created$/) do
  @british_council.press_release.status.text.should include "Press release #{@press_release.title} has been created."
end