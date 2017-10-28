require 'spec_helper'
require_relative '../../lib/average'

describe Average do
  	
  describe summ() do

  	it 'calculates the summ of an array' do
  		array = [5, 5, 5, 5]
  		expect(summ(array)).to eq(20)
  	end


  end
end
