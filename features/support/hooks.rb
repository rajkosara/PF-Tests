Before('~@mobile') do
  Helpers::Browser.full_size_window
end

Before('@firefox') do
  Capybara.current_driver = :selenium_firefox
end

Before do
      Timeout.timeout(30) { sleep(0.5) while Capybara.current_url != "about:blank"}
  if ENV['JUNIT_OUTPUT_SMOKE'] == "/Users/Test/.jenkins/jobs/Run_Smoke_Tests/workspace"
    sleep 2
  end
end

After do
  if ENV['JUNIT_OUTPUT_SMOKE'] == "/Users/Test/.jenkins/jobs/Run_Smoke_Tests/workspace"
    sleep 2
  end
end