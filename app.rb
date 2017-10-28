require 'sinatra'
require 'date'
require_relative './lib/average'
require_relative './lib/printer'

class Statistics < Sinatra::Base
	

  enable :sessions

  $transaction = []

  get '/' do
    'infrastructure test'
    #print '1hello'
    #$amount = gets.chomp
    erb(:index)
    #redirect '/transaction'
  end

  post '/transaction' do
    $amount = params[:amount]
    $transaction.push($amount.to_f)
    print "{\n amount: #{$amount},\n\n timestamp: #{DateTime.now.strftime('%Q')}\n}\n"
  end

  get '/statistics' do
    print 'hello world'
    average = Average.new
    printer = Printer.new
    sum = average.summ($transaction)
    avg = average.average_calc($transaction)
    puts '2hello'
    puts sum 
    puts '3hello'
    puts avg
  end

  run! if app_file == $PROGRAM_NAME
end