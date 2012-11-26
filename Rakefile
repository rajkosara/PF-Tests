require 'cucumber/rake/task'
require 'yaml'

namespace :cuke do
  profiles = YAML::load(File.open(File.join(Dir.pwd, 'config/cucumber.yml'))).keys
  profiles.each do |profile|
    Cucumber::Rake::Task.new(profile.to_sym) do |t|
      t.profile = profile
      t.libs << 'lib'
    end
  end
end