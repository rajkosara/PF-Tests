When(/^create home page is displayed$/) do
  @british_council.create_home_page.should be_displayed
end

When(/^I submit a home page$/) do
  step "create home page is displayed"
  @british_council.create_home_page.carousel_promotion_item.first.set @image_promotion.title
  wait_for_ajax
  @british_council.create_home_page.carousel_promotion_item.first.native.send_keys :arrow_down
  Timeout.timeout(30) { sleep(0.1) until @british_council.create_home_page.list_dropdown.visible?}
  @british_council.create_home_page.carousel_promotion_item.first.native.send_keys :arrow_down
  @british_council.create_home_page.carousel_promotion_item.first.native.send_keys :enter
  wait_for_ajax
  @british_council.create_home_page.body_content_title.set "This is the home page title"
  @british_council.create_home_page.body_column_one_tab.click
  @british_council.create_home_page.body_column_one_summary.set "this is the body col summary text"
  @british_council.create_home_page.body_column_one_body.native.send_keys "body col body text.... but why body twice"
  @british_council.create_home_page.body_column_one_link_title.first.set "This is the first link title"
  @british_council.create_home_page.body_column_one_link_url.first.set "www.google.co.uk"
  @british_council.create_home_page.body_column_one_link_title.last.set "This is the second link title"
  @british_council.create_home_page.body_column_one_link_url.last.set "http://www.example.com"
  @british_council.create_home_page.body_column_two_tab.click
  @british_council.create_home_page.body_column_two_body.native.send_keys "body col body the second one, text..."
  @british_council.create_home_page.body_column_two_link_title.set "This is the col two link"
  @british_council.create_home_page.body_column_two_link_url.set "www.chicken.co.uk"

  @british_council.create_home_page.image_promotion_item.each do |thing|
    thing.set @image_promotion.title
    wait_for_ajax
    thing.native.send_keys :arrow_down
    Timeout.timeout(30) { sleep(0.1) until @british_council.create_home_page.list_dropdown.visible?}
    thing.native.send_keys :enter
    wait_for_ajax
  end
  @british_council.create_home_page.three_column_heading.set "the 3rd col heading :)"
  @british_council.create_home_page.column_tab.each do |thing|
    thing.click
  end
  @british_council.create_home_page.column.each do |thing|
    thing.image_promo.set @image_promotion.title
    wait_for_ajax
    thing.image_promo.native.send_keys :arrow_down
    Timeout.timeout(30) { sleep(0.1) until @british_council.create_home_page.list_dropdown.visible?}
    thing.image_promo.native.send_keys :enter
    wait_for_ajax
    thing.title.each do |other|
      other.set "this is the title in this block"
    end
    thing.url.each do |more|
      more.set "www.github.com/cucumber"
    end
  end
  @british_council.create_home_page.meta_config.publish_tab.click
  @british_council.create_home_page.meta_config.publish_settings.publish_status.select "Published"
  @british_council.create_home_page.save_button.click
end