require 'spec_helper'
require_relative '../../app'
require_relative './web_helpers'

feature Statistics do
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

  describe 'transaction is displayed' do
    it 'displays current transaction with timestamp' do
      enter_amount
      time = DateTime.now.strftime('%Q')
      expect(page).to have_content("amount: 120, timestamp: #{time}")
    end
  end

  describe 'statistic is displayed' do
    it 'displays sum, avg, max, min, count' do
      display_statistic
      expect(page).to have_content('sum: 240, avg: 120, max: 120, min: 120, count: 2')
    end
  end
end
