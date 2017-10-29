
class Average
  def transac_sum(transactions)
    sum = 0
    transactions.each do |n|
      sum += n
    end
    sum
  end

  def average_calc(transactions)
    transaction_sum = transac_sum(transactions)
    average = transaction_sum / transactions.count
    average
  end
end
