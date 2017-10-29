require 'spec_helper'
require_relative '../../app'
require_relative './web_helpers'

feature Statistics do

# before do
#     Timecop.freeze(Time.local(875073000))
#   end

#   after do
#     Timecop.return
#   end

  describe 'user enters amount' do
    it 'has textfield' do
      visit('/')
      expect(page).to have_field('amount')
    end

    it 'has submit button' do
      visit('/')
      expect(page).to have_button('Submit')
    end
  end


  # describe 'transaction gets printed' do
  #   it 'was successful' do
  #     enter_amount
  #     expect(acutal).to eq('201')
  #   end

  #   it 'returns a transaction hash' do
  #     enter_amount
  #     expect(actual).to eq('{"amount":"120","timestamp":"875073000"}')
  #   end
  # end

  # describe 'statistic gets printed' do
  #   it 'returns a statistics hash' do
  #     enter_amount
  #     visit('/statistics')
  #     expect(actual).to include('{"sum":10.0,"avg":120.0,"max":120.0,"min":120.0,"count":1}')
  #   end
  # end
end
