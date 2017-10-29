require 'sinatra'
require 'date'
require 'json'
require_relative './lib/average'
require_relative './lib/print_statistics'

class Statistics < Sinatra::Base

  enable :sessions

  $transaction = []

  get '/' do
    erb(:index)
  end

  post '/transactions' do
    $amount = params[:amount]
    $transaction.push($amount.to_f)
    to_return = Hash['amount', $amount, 'timestamp', DateTime.now.strftime('%Q')]
    puts to_return.to_json
    sleep 60
    $transaction.shift
  end

  get '/statistics' do
    printer = Print_statistics.new
    puts printer.print.to_json
  end

  run! if app_file == $PROGRAM_NAME
end
