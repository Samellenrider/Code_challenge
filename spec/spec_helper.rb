ENV['RACK_ENV'] = 'test'
require 'capybara'
require 'sinatra'
require 'rspec'

require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require_relative '../app.rb'

Capybara.app = Statistics

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
)
SimpleCov.start
