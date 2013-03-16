require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'cucumber'
require 'rspec'
require 'site_prism'
require 'selenium-webdriver'
require 'active_support/dependencies'
require 'time'
require 'active_support/time'
require 'tzinfo'

require './ext/string'
require './ext/time'
require './ext/capybara'

#Set the timezone to be London time
Time.zone = 'Europe/London'

#loads everything in the lib folder
ActiveSupport::Dependencies.autoload_paths << File.expand_path(File.join(Dir.pwd, 'lib'))


#setup config for browser
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.run_server = false
  config.default_selector = :css
  config.default_wait_time = 10
  config.ignore_hidden_elements = false
end

Capybara.register_driver :selenium_chrome do |app|
  profile = Selenium::WebDriver::Chrome::Profile.new
  profile["browser.cache.disk.enable"] = false
  profile["browser.cache.memory.enable"] = false
  profile["browser.cache.offline.enable"] = false
  profile["network.http.use-cache"] = false
  profile["extensions.update.enabled"] = false
  profile["privacy.clearOnShutdown.cookies"] = true
  profile["privacy.clearOnShutdown.cache"] = true
  profile["app.update.enabled"] = false
  profile["app.update.auto"] = false
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.register_driver :iphone_chrome do |app|
  profile = Selenium::WebDriver::Chrome::Profile.new
  profile["browser.cache.disk.enable"] = false
  profile["browser.cache.memory.enable"] = false
  profile["browser.cache.offline.enable"] = false
  profile["network.http.use-cache"] = false
  profile["extensions.update.enabled"] = false
  profile["privacy.clearOnShutdown.cookies"] = true
  profile["privacy.clearOnShutdown.cache"] = true
  profile["app.update.enabled"] = false
  profile["app.update.auto"] = false
  Capybara::Selenium::Driver.new(app, :browser => :chrome, :profile => profile, :switches=>['--user-agent=Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_3_2 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8H7 Safari/6533.18.5'] )
end

Capybara.register_driver :selenium_firefox do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

module StuffWeWantAvailable
  def wait_for_ajax
    wait_until { page.evaluate_script("jQuery.active") == 0 }
  end

  def scroll_to_end_of_page
    page.execute_script "window.scrollBy(0,10000)"
  end

  def scroll_to_start_of_page
    page.execute_script "window.scrollBy(0,-10000)"
  end
end


World(Capybara)
World(StuffWeWantAvailable)