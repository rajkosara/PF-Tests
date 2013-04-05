Before do
  Helpers::Browser.full_size_window
end

Before('@firefox') do
  Capybara.current_driver = :selenium_firefox
end

Before do
  #Timeout.timeout(30) { sleep(0.5) while Capybara.current_url != "about:blank"}
  sleep 1.5
end

After do
  sleep 1.5
end