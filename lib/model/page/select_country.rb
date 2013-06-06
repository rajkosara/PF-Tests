class Model::Page::SelectCountry < SitePrism::Page
  set_url "#{Helpers::Config['pf_site_root']}/Account/UserCountries"

  element :country, 'input[name="SelectedCountryId"]'
  element :okbutton, 'td input[value="OK""]'


  def country_click
    evaluate_script(%Q{ jQuery("input[name='SelectedCountryId']").first().click()})
  end

  def ok_click
    evaluate_script(%Q{ jQuery("td input[value='OK']").click()})
  end

end