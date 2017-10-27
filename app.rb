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
  	avg = (var /= $transaction.count)
  	return avg
  end



  get '/statistics' do
  	"sum: #{$transaction.sum},\n avg: #{avg},\n max: #{$transaction.max},\n min: #{$transaction.min},\n count: #{$transaction.count}"
  end







  run! if app_file == $PROGRAM_NAME
end
