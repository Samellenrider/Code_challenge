class Average
  def summ(transactions)
    sum = 0
    transactions.each do |n|
      sum += n
    end
      return sum
  end

  def average_calc(transactions)
    transaction_sum = summ(transactions)
    average = transaction_sum / transactions.count
    average
  end
end

# def summ(array)
#   array.inject(0){|sum,x| sum + x }
#   end
