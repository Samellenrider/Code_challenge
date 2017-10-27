require 'sinatra'
require 'date'

class Statistics < Sinatra::Base

  enable :sessions


  get '/' do 
    "infrastructure test"
  end

  get '/transaction' do 
    session[:amount] = params[:amount]
    @transaction = []
    @transaction.push(@amount)
    erb(:index)
    redirect to '/printtransaction'
  end

  get 'printtransaction' do
    "\"amount\": #{@amount}, \"timestamp\": #{ DateTime.now.strftime('%Q') }"
  end



  run! if app_file == $0
end