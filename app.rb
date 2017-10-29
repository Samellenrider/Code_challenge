require 'sinatra'
require 'date'
require 'json'
require_relative './lib/average'
require_relative './lib/print_statistics'
require_relative './lib/print_transaction'

class Statistics < Sinatra::Base

  enable :sessions

  $transaction = []

  get '/' do
    erb(:index)
  end

  post '/transactions' do
    $amount = params[:amount]
    printer = Transaction.new
    puts printer.print_transac.to_json
  end

  get '/statistics' do
    printer = Print_statistics.new
    puts printer.print_stat.to_json
  end

  run! if app_file == $PROGRAM_NAME
end
