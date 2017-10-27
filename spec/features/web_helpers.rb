def enter_amount
  visit('/')
  fill_in :amount, with: 120
  click_button 'Submit'
end
