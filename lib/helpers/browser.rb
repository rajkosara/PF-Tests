class Helpers::Browser
  def self.resize_window
    Capybara.current_session.driver.browser.manage.window.resize_to(430, 600)
  end

  def self.full_size_window
    Capybara.current_session.driver.browser.manage.window.resize_to(1300, 900)
  end
end

