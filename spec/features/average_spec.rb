require 'spec_helper'
require_relative '../../lib/average'

describe Average do
  describe summ(transactions) do
    it 'calculates the summ of an array' do
      transactions = [5, 5, 5, 5]
      expect(summ(transactions)).to eq(20)
    end
  end
end
