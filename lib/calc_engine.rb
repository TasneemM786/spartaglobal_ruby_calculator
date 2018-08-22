require 'complex'
include Math

# calculator options
def choose_calculator
  puts "Which calculator do you want to use:"
  puts "(b)asic"
  puts "(a)dvanced"
  choice = gets.chomp
  if choice == 'b'
    basic_calculator
  elsif choice == 'a'
    advance_calculator
  end
end

def basic_calculator
  puts "what would you like to do"
  puts "(a)dd"
  puts "(m)ultiply"
  puts "(s)ubtract"
  puts "(d)ivide"

  # gets.chomp: gets the user input
  operation = gets.chomp

  # option to add numbers
  puts "enter your numbers"
  num1 = gets.chomp
  num2 = gets.chomp

  # if the operation is adding
  if operation == 'a'
    # to_f - to float (float=any number)
    puts num1.to_f + num2.to_f
  # if the operation is multiplying
  elsif operation == 'm'
    # to_f - to float (float=any number)
    puts num1.to_f * num2.to_f
  # if the operation is subtracting
  elsif operation == 's'
    # to_f - to float (float=any number)
    puts num1.to_f - num2.to_f
  # if the operation is dividing
  elsif operation == 'd'
    # to_f - to float (float=any number)
    puts num1.to_f / num2.to_f
  end
end

def advance_calculator
  puts "what option"
  puts "(p)ower"
  puts "(s)quare root"

  # gets.chomp: gets the user input
  operation = gets.chomp

  # option to add numbers


  if operation == 'p'
    puts "enter your numbers"
    num1 = gets.chomp
    num2 = gets.chomp
    # to_f - to float (float=any number)
    num1 = num1.to_f
    num2 = num2.to_f
    # works out the power of num1 to num2 and using ** operator
    # ** : to the power of
    puts "#{num1} to the power #{num2} = #{num1 ** num2}"

  elsif operation == 's'
    # only need one number for square root
    puts "enter your number"
    num1 = gets.chomp
    # to_f - to float (float=any number)
    num1 = num1.to_f
    # Math.sqrt = square root
    puts "the square root of #{num1} = #{Math.sqrt(num1)}"

  end
end



# runs after function are defined
choose_calculator
