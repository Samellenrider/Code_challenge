require_relative './average'

class Print_statistics

  def initialize
  	@average = Average.new
  end

  def print_stat
  	if $transaction.count != 0
      sum = @average.summ($transaction)
      avg = @average.average_calc($transaction)
      to_return = Hash['sum', sum, 'avg', avg, 'max', $transaction.max, 'min', $transaction.min, 'count', $transaction.count]
      puts '201'
      puts to_return.to_json
    else
      '204'
      puts '204'
    end
  end

end