require 'sinatra'
require 'date'

class Statistics < Sinatra::Base
  enable :sessions

  $transaction = []

  get '/' do
    'infrastructure test'
    erb(:index)
  end

  post '/transaction' do
    $amount = params[:amount]
    $transaction.push($amount.to_i)
    redirect to '/printtransaction'
  end

  get '/printtransaction' do
    "\"amount\": #{$amount}, \"timestamp\": #{DateTime.now.strftime('%Q')}"
  end

  def sum
    sum = 0
    array.each do |n|
      sum += n
      return sum
    end
  end

  def avg
    var = $transaction.sum
    var /= $transaction.count
  end

  def statistics
    a = { 'sum:' => $transaction.sum,
          'avg:' => avg,
          'max:' => $transaction.max,
          'min:' => $transaction.min,
          'count:' => $transaction.count }
    a.to_s
end

  get '/statistics' do
    statistics
  end

  run! if app_file == $PROGRAM_NAME
end
