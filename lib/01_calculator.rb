# Create a simple calculator that first asks the user what method they would like to use (addition, subtraction, multiplication, division) and then asks the user for two numbers, returning the result of the method with the two numbers. Here is a sample prompt:
#
# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9

  puts "What calculation would you like to do (add, sub, mult, div)"
  operation_selection = gets.chomp

  puts 'What is number 1'
  first_num = gets.chomp.to_i

  puts 'What is number 2'
  second_num = gets.chomp.to_i

  add = first_num + second_num
  subtr = first_num - second_num
  mult = first_num * second_num
  div = first_num / second_num

  if operation_selection == 'add'
    p "Your result is #{add}"
  elsif operation_selection == 'sub'
    p "Your result is #{subtr}"
  elsif operation_selection == 'mult'
    p "Your result is #{mult}"
  elsif operation_selection == 'div'
    p "Your result is #{div}"
  end
