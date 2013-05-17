Then /^wait for translate page to be displayed$/ do
  Timeout.timeout(30) { sleep(0.1) until @british_council.translate.current_url.include? "/translate"}
  @british_council.translate.current_url.should include "/translate"
end

Given /^I click add translation on the translate page$/ do
  step "wait for translate page to be displayed"
  @british_council.translate.add_translation.click
end
