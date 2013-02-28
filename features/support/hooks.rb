Before('~@mobile') do
  Helpers::Browser.full_size_window
end

Before('@firefox') do
  Capybara.current_driver = :selenium_firefox
end

Before do
  puts ENV['JUNIT_OUTPUT']
  case ENV['JUNIT_OUTPUT']
  when ENV['JUNIT_OUTPUT'] != nil
    sleep 1.5
  end
end

After do
  puts ENV['JUNIT_OUTPUT']
  case ENV['JUNIT_OUTPUT']
  when ENV['JUNIT_OUTPUT'] != nil
    sleep 1.5
  end
end