Before do
  Helpers::Browser.full_size_window
end

Before('@firefox') do
  Capybara.current_driver = :selenium_firefox
end

Before do
  #page.execute_script "window.open();"
  Capybara.reset!#_session!
  sleep 1
end

After do
  page.driver.browser.quit #.execute_script "window.close();"
  Capybara.send(:session_pool).delete_if { |key, value| key =~ /selenium/i }
  sleep 1
end