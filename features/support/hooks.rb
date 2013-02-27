Before('~@mobile') do
  Helpers::Browser.full_size_window
end

Before('@firefox') do
  Capybara.current_driver = :selenium_firefox
end

Before do
  if ENV['JUNIT_OUTPUT'] != nil
    sleep 1.5
  end
end

After do
  if ENV['JUNIT_OUTPUT'] != nil
    sleep 2
  end
end