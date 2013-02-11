Then /^the landing page is created$/ do
  @british_council.landing_page.status.text.should include "Landing page #{@landing_page.title} has been created."
end