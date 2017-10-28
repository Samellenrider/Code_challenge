require 'sinatra'
require 'date'
require 'json'
require_relative './lib/average'

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
    sleep 30
    $transaction.shift
  end

  get '/statistics' do
    average = Average.new
    if $transaction.count != 0
      sum = average.summ($transaction)
      avg = average.average_calc($transaction)
      to_return = Hash['sum', sum, 'avg', avg, 'max', $transaction.max, 'min', $transaction.min, 'count', $transaction.count]
      puts '201'
      puts to_return.to_json
    else
      puts '204'
    end
  end

  run! if app_file == $PROGRAM_NAME
end
