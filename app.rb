require 'sinatra'
require 'date'


# timestamp = DateTime.now.strftime('%Q')


get '/transaction' do 
  "\"amount\": 12.3, \"timestamp\": #{ DateTime.now.strftime('%Q') }"
  #erb(:index)
end