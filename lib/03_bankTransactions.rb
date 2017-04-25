# Challenge 3 - Bank Transactions
#
# Create a prompt that asks the user if they would like to display their balance, withdraw or deposit.
# Write three methods to perform these calculations and output the result to the user.
# Here is a sample output:
#
# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!

puts 'Would you like to display deposit, withdraw or check_balance?'
user_selection = gets.chomp.to_s

class Currentbalance
  def initialize(balance)
    @balance = balance
  end

  def getBalance
    return @balance
  end

end

current_balance = Currentbalance.new(5000)
# puts current_balance.getBalance

# puts current_balance.getBalance + 10


if user_selection.downcase == 'deposit'
  puts 'How much would you like to deposit'
  deposit_amount = gets.chomp.to_i
  puts "Your current balance is #{current_balance.getBalance + deposit_amount}"
  puts "Are you done?"
  answer = gets.chomp
  if answer.downcase == 'yes'
    puts 'Thank you!'
  else
    puts 'Would you like to display deposit, withdraw or check_balance?'
    user_selection = gets.chomp.to_s
  end
end

if user_selection.downcase == 'withdraw'
  puts "How much would you like to withdraw"
  withdraw_amount = gets.chomp.to_i
  puts "Your current balance is #{current_balance.getBalance - withdraw_amount}"
  puts "Are you done?"
  answer = gets.chomp
  if answer.downcase == 'yes'
    puts 'Thank you!'
  else
    puts 'Would you like to display deposit, withdraw or check_balance?'
    user_selection = gets.chomp.to_s
  end
end

if user_selection.downcase == 'check_balance'
  puts "Your current balance is #{current_balance.getBalance}"
  puts "Are you done?"
  answer = gets.chomp
  if answer.downcase == 'yes'
    puts 'Thank you!'
  else
    puts 'Would you like to display deposit, withdraw or check_balance?'
    user_selection = gets.chomp.to_s
  end
end
