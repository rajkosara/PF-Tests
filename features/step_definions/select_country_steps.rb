When(/^I Select a country$/) do
  @british_council.select_country.country_click
  #@british_council.select_country.country.click

  
end

When(/^When I Click Ok$/) do
  @british_council.select_country.ok_click
end


