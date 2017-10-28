
class Printer
  def initialize
    @average = Average.new
  end

  def print_statistic
    a = "sum: #{@average.summ},
          avg: #{@average.average_calc},
          max: #{$transaction.max},
          min: #{$transaction.min},
          count: #{$transaction.count}"
    a.to_s
  end
end
