class Helpers::Browser
  def self.resize_window
    #resize_chrome_window = %Q{osascript -e "tell application \\\"Google Chrome\\\" to set bounds of window 1 to {1,1,430,600}"}
    #`#{resize_chrome_window}`
    Capybara.current_session.driver.browser.manage.window.resize_to(430, 600)
  end

  def self.full_size_window
    #resize_chrome_window_full_size = %Q{osascript -e "tell application \\\"Google Chrome\\\" to set bounds of window 1 to {1,1,1300,900}"}
    #`#{resize_chrome_window_full_size}`
    Capybara.current_session.driver.browser.manage.window.resize_to(1300, 900)
  end
end

