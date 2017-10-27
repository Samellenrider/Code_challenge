require_relative '../../app.rb'
require_relative './web_helpers'

class Statistics do
	
  scenario "customer enters transaction amount" do
    enter_amount
    expect(page).to eq("\"amount\": 120 \"timestamp\": #{DateTime.now.strftime('%Q')}'")
  end
end




