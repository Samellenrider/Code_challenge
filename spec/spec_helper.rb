ENV['RACK_ENV'] = 'test'
require 'capybara'
require 'sinatra'
require 'rspec'
require 'timecop'
require_relative '../app.rb'

require 'capybara/rspec'
#require 'timecop/rspec'

# RSpec.configure do |config|
#   config.around(:example) do |example|
#     Timecop::Rspec.time_machine.run(example)
#   end
# end

Capybara.app = Statistics
