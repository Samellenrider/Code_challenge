require 'spec_helper'
require_relative '../../lib/average'

describe Average do

    it 'calculates the summ of an array' do
      t = Average.new
      transactions = [5, 5, 5, 5]
      expect(t.summ(transactions)).to eq(20)
    end

    it 'gives the average of transactions' do
      t = Average.new
      transactions = [5, 5, 5, 5]
      t.summ(transactions)
      expect(t.average_calc(transactions)).to eq(5)
    end

end
