ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'app/app')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = MyApp
Capybara.javascript_driver = :selenium

class MyAppWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  MyAppWorld.new
end
