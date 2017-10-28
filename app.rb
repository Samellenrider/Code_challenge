require 'sinatra'
require 'date'
require 'json'
require_relative './lib/average'
require_relative './lib/printer'

class Statistics < Sinatra::Base
	

  enable :sessions

  $transaction = []

  get '/' do
    'infrastructure test'
    erb(:index)
  end

  post '/transaction' do
    $amount = params[:amount]
    $transaction.push($amount.to_f)
    to_return = Hash["amount", $amount, "timestamp", DateTime.now.strftime('%Q')]
    puts to_return.to_json
  end

  get '/statistics' do
    average = Average.new
    printer = Printer.new
    sum = average.summ($transaction)
    avg = average.average_calc($transaction)
    to_return = Hash["sum", sum, "avg", avg, "max", $transaction.max, "min", $transaction.min, "count", $transaction.count]
    puts to_return.to_json
  end

  run! if app_file == $PROGRAM_NAME
end