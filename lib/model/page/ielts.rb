class Model::Page::Ielts < SitePrism::Page
  element :status, ".status"
  element :edit_button, ".tabs a[href*='edit']"
  element :translate_button, ".tabs a[href*='translate']"
  element :title, "#bc-page-title"
  #tab one
  element :tab_one_title, "[data-hash='#bc-tabs--1'] a"
  elements :tab_one_content, "#bc-tabs--1 div.bc-body-content p"

  def tab_one_top_body
    tab_one_content.first
  end

  element :tab_one_links_title, "#bc-tabs--1 div.bc-body-content section"

  def tab_one_bottom_body
    tab_one_content.last
  end

  #tab two
  element :tab_two_title, "[data-hash='#bc-tabs--2'] a"
  elements :tab_two_content, "#bc-tabs--2 div.bc-body-content p"

  def tab_two_top_body
    tab_two_content.first
  end

  def tab_two_bottom_body
    tab_two_content.last
  end

  #tab three
  element :tab_three_title, "[data-hash='#bc-tabs--3'] a"
  elements :tab_three_content, "#bc-tabs--3 div.bc-body-content p"

  def tab_three_top_body
    tab_three_content.first
  end

  def tab_three_bottom_body
    tab_three_content.last
  end

  #tab four
  element :tab_four_title, "[data-hash='#bc-tabs--4'] a"
  elements :tab_four_content, "#bc-tabs--4 div.bc-body-content p"

  def tab_four_top_body
    tab_four_content.first
  end

  def tab_four_bottom_body
    tab_four_content.last
  end
end