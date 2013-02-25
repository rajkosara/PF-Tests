Before('~@mobile') do
  Helpers::Browser.full_size_window
end

Before('@firefox') do
  Capybara.current_driver = :selenium_firefox
end

Before do
  sleep 1.5
end

After do
  sleep 1.5
end