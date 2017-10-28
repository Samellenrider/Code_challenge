class Average

  def summ(transactions)
    sum = 0
    transactions.each do |n|
      sum += n
      return sum
    end
  end

  def average_calc(transactions)
    transaction_sum = summ(transactions)
    average = transaction_sum / transactions.count
    return average
  end
end




# def summ(array)
#   array.inject(0){|sum,x| sum + x }
#   end
