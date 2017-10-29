class Transaction

  def print_transac
  	#$amount = params[:amount]
    $transaction.push($amount.to_f)
    to_return = Hash['amount', $amount, 'timestamp', DateTime.now.strftime('%Q')]
    puts to_return.to_json
    sleep 60
    $transaction.shift
  end

end