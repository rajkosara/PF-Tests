When(/^create endeavour home page is displayed$/) do
  @british_council.create_home_page_endeavour.should be_displayed
end

When(/^create conqueror home page is displayed$/) do
  @british_council.create_home_page_conqueror.should be_displayed
end

When(/^I submit a endeavour home page$/) do
  step "create endeavour home page is displayed"
  @british_council.create_home_page_endeavour.carousel_promotion_item.first.set @image_promotion.title
  wait_for_ajax
  @british_council.create_home_page_endeavour.carousel_promotion_item.first.native.send_keys :arrow_down
  Timeout.timeout(30) { sleep(0.1) until @british_council.create_home_page_endeavour.list_dropdown.visible?}
  @british_council.create_home_page_endeavour.carousel_promotion_item.first.native.send_keys :arrow_down
  @british_council.create_home_page_endeavour.carousel_promotion_item.first.native.send_keys :enter
  wait_for_ajax
  step "I fill out the body fields on the endeavour home page"

  @british_council.create_home_page_endeavour.image_promotion_item.each do |thing|
    thing.set @image_promotion.title
    wait_for_ajax
    thing.native.send_keys :arrow_down
    Timeout.timeout(30) { sleep(0.1) until @british_council.create_home_page_endeavour.list_dropdown.visible?}
    thing.native.send_keys :enter
    wait_for_ajax
  end
  @british_council.create_home_page_endeavour.three_column_heading.set "the 3rd col heading :)"
  @british_council.create_home_page_endeavour.column_tab.each do |thing|
    thing.click
  end
  @british_council.create_home_page_endeavour.column.each do |thing|
    thing.image_promo.set @image_promotion.title
    wait_for_ajax
    thing.image_promo.native.send_keys :arrow_down
    Timeout.timeout(30) { sleep(0.1) until @british_council.create_home_page_endeavour.list_dropdown.visible?}
    thing.image_promo.native.send_keys :enter
    wait_for_ajax
    thing.title.each do |other|
      other.set "this is the title in this block"
    end
    thing.url.each do |more|
      more.set "www.github.com/cucumber"
    end
  end
  @british_council.create_home_page_endeavour.meta_config.publish_tab.click
  @british_council.create_home_page_endeavour.meta_config.publish_settings.publish_status.click
  @british_council.create_home_page_endeavour.save_button.click
end

When(/^I submit a conqueror home page$/) do
  step "create conqueror home page is displayed"
  @british_council.create_home_page_conqueror.promo_tabs.each do |thing|
    thing.set @image_promotion.title
    wait_for_ajax
    thing.native.send_keys :arrow_down
    Timeout.timeout(30) { sleep(0.1) until @british_council.create_home_page_conqueror.list_dropdown.visible?}
    thing.native.send_keys :arrow_down
    thing.native.send_keys :enter
    wait_for_ajax
  end
  step "I fill out the body fields on the conqueror home page"

  @british_council.create_home_page_conqueror.column_tab.each do |thing|
    thing.click
  end
  @british_council.create_home_page_conqueror.column.each do |thing|
    thing.image_promo.set @image_promotion.title
    wait_for_ajax
    thing.image_promo.native.send_keys :arrow_down
    Timeout.timeout(30) { sleep(0.1) until @british_council.create_home_page_conqueror.list_dropdown.visible?}
    thing.image_promo.native.send_keys :enter
    wait_for_ajax
    thing.title.each do |other|
      other.set "this is the title in this block"
    end
    thing.url.each do |more|
      more.set "www.github.com/cucumber"
    end
  end

  @british_council.create_home_page_conqueror.image_promotion_item.each do |thing|
    thing.set @image_promotion.title
    wait_for_ajax
    thing.native.send_keys :arrow_down
    Timeout.timeout(30) { sleep(0.1) until @british_council.create_home_page_conqueror.list_dropdown.visible?}
    thing.native.send_keys :enter
    wait_for_ajax
  end

  @british_council.create_home_page_conqueror.meta_config.publish_tab.click
  @british_council.create_home_page_conqueror.meta_config.publish_settings.publish_status.click
  @british_council.create_home_page_endeavour.save_button.click
end

Then(/^I fill out the body fields on the conqueror home page$/) do
  @british_council.create_home_page_conqueror.body_content_title.set "This is the home page title"
  @british_council.create_home_page_conqueror.body_column_one_tab.click
  @british_council.create_home_page_conqueror.body_column_one_summary.set "this is the body col summary text"
  @british_council.create_home_page_conqueror.body_column_one_body.native.send_keys "body col body text.... but why body twice"
  @british_council.create_home_page_conqueror.body_column_one_link_title.first.set "This is the first link title"
  @british_council.create_home_page_conqueror.body_column_one_link_url.first.set "www.google.co.uk"
  @british_council.create_home_page_conqueror.body_column_one_link_title.last.set "This is the second link title"
  @british_council.create_home_page_conqueror.body_column_one_link_url.last.set "http://www.example.com"
  @british_council.create_home_page_conqueror.body_column_two_tab.click
  @british_council.create_home_page_conqueror.body_column_two_body.native.send_keys "body col body the second one, text..."
  @british_council.create_home_page_conqueror.body_column_two_link_title.set "This is the col two link"
  @british_council.create_home_page_conqueror.body_column_two_link_url.set "www.chicken.co.uk"
end

Then(/^I fill out the body fields on the endeavour home page$/) do
  @british_council.create_home_page_endeavour.body_content_title.set "This is the home page title"
  @british_council.create_home_page_endeavour.body_column_one_tab.click
  @british_council.create_home_page_endeavour.body_column_one_summary.set "this is the body col summary text"
  @british_council.create_home_page_endeavour.body_column_one_body.native.send_keys "body col body text.... but why body twice"
  @british_council.create_home_page_endeavour.body_column_one_link_title.first.set "This is the first link title"
  @british_council.create_home_page_endeavour.body_column_one_link_url.first.set "www.google.co.uk"
  @british_council.create_home_page_endeavour.body_column_one_link_title.last.set "This is the second link title"
  @british_council.create_home_page_endeavour.body_column_one_link_url.last.set "http://www.example.com"
  @british_council.create_home_page_endeavour.body_column_two_tab.click
  @british_council.create_home_page_endeavour.body_column_two_body.native.send_keys "body col body the second one, text..."
  @british_council.create_home_page_endeavour.body_column_two_link_title.set "This is the col two link"
  @british_council.create_home_page_endeavour.body_column_two_link_url.set "www.chicken.co.uk"
end