Before do
  Helpers::Browser.full_size_window
end

Before('@firefox') do
  Capybara.current_driver = :selenium_firefox
end

Before do
  Capybara.reset_session!
  sleep 3
end

After do
  sleep 3
end