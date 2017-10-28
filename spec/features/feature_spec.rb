require 'spec_helper'
require_relative '../../app'

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
end
