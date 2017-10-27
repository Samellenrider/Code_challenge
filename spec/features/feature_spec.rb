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
      expect(page).to have_content("\"amount\": 120, \"timestamp\": #{DateTime.now.strftime('%Q')}")
    end
  end
end
