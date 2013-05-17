When(/^I add a promo link to the manin menu$/) do
  @promo_title = "Promo Title #{String.random(4)}"
  @british_council.add_promo_link.link_title.set @promo_title
  @british_council.add_promo_link.path.set @landing_page.url
  @british_council.add_promo_link.language.select "English"
  @british_council.add_promo_link.save_button.click
  Timeout.timeout(30){sleep(0.1) while @british_council.add_promo_link.current_url == "http://kr.local.solas.britishcouncil.net:8080/en/admin/structure/menu/manage/menu-promo-menu/add"}
end