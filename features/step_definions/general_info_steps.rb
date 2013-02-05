Then /^the general info page is created$/ do
  @british_council.general_info.status.text.should include "General info #{@general_info.title} has been created."
end