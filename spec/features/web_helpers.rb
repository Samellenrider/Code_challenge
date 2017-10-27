
def enter_amount
  visit('/')
  fill_in :amount, with: '120'
  click_button 'Submit'
  visit('/transaction')
  visit('/printtransaction')
end

def display_statistic
  enter_amount
  visit('/statistics')
end
