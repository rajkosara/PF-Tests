require 'cucumber/rake/task'
require 'rspec/core/rake_task'
require 'yaml'
require 'selenium/rake/server_task'

desc "Populate DB"
namespace :cuke do
  profiles = YAML::load(File.open(File.join(Dir.pwd, 'config/cucumber.yml'))).keys
  profiles.each do |profile|
    Cucumber::Rake::Task.new(profile.to_sym) do |t|
      t.profile = profile
      t.libs << 'lib'
    end
  end
  #
  #  Cucumber::Rake::Task.new("smoke", "Run the smoke tests")
  #  Cucumber::Rake::Task.new("complete", "Run all tests tagged as complete")
  #  Cucumber::Rake::Task.new("complete_no_failing", "Run all tests tagged as complete")
  #  Cucumber::Rake::Task.new("custom", "Run a cust created tag")
  #  Cucumber::Rake::Task.new("failing", "Run all tests that have been marked as failing")
  #  Cucumber::Rake::Task.new("feature", "Run all tests in particular feature")
  #  Cucumber::Rake::Task.new("jenkins_complete_failing", "Task for jankins to run all complete tests (This will fail on your local machine)")
  #  Cucumber::Rake::Task.new("jenkins_complete_passing", "Task for jankins to run all complete and expected to pass tests")
  #  Cucumber::Rake::Task.new("jenkins_smoke", "Task for jankins to run smoke tests")
  #  Cucumber::Rake::Task.new("specific", "This is to run a particular TAG. This is will be useful to run, e.g rake cuke:specific TAGS=@landing_page")
  #
  #  Cucumber::Rake::Task.new("wip", "This for use when writing tests. Work In Progress") do |t|
  #    t.cucumber_opts = "-d -f Cucumber::Formatter::Wip"
  #  end


  Cucumber::Rake::Task.new("list_tags", "List all tags") do |t|
    t.cucumber_opts = "-d -f Cucumber::Formatter::ListTags"
  end


end

namespace :config do
  desc "List available configs"
  task :list do
    config_yaml = File.join(Dir.pwd, 'config/config.yml')
    raise "the config yaml file could not be found" unless File.exists?(config_yaml)
    config_yaml_file = YAML::load(File.open(config_yaml))
    puts "Known configurations are are:"
    config_yaml_file.keys.each do |key|
      puts "  - #{key}"
    end
  end
end