def sum(num1, num2)
  num1 + num2
end

def diff(num1, num2)
  num1 - num2
end

def product(num1, num2)
  num1 * num2
end

def quotient(num1, num2)
  num1 / num2
end

def modulo(num1, num2)
  num1 % num2
end

def display_choices
  puts "-" * 40
  puts "What do you want to do?"
  puts "1. Addition"
  puts "2. Subtraction"
  puts "3. Multiplication"
  puts "4. Division"
end

def get_operation
  print "Enter choice: "
  input = gets.chomp
  return input.to_i
end

def get_input(first = true)
  if first
    print "Enter first number: "
    input = gets.chomp
    return input.to_f
  else
    print "Enter second number: "
    input = gets.chomp
    return input.to_f
  end
end

display_choices
input = get_operation

if input <= 4
  if input == 1
    num1 = get_input
    num2 = get_input(false)
    puts sum(num1, num2)
  elsif input == 2
    num1 = get_input
    num2 = get_input(false)
    puts diff(num1, num2)
  elsif input == 3
    num1 = get_input
    num2 = get_input(false)
    puts product(num1, num2)
  else
    num1 = get_input
    num2 = get_input(false)
    puts quotient(num1, num2)
  end
else
  puts "Unknown operation"
end

# puts "Enter first number: "
# num1 = gets.chomp
#
# puts "Enter second number: "
# num2 = gets.chomp
#
# puts "Sum: #{sum(num1.to_i, num2.to_i)}"
# puts "Difference: #{diff(num1.to_i, num2.to_i)}"
# puts "Product: #{product(num1.to_i, num2.to_i)}"
# puts "Quotient: #{quotient(num1.to_f, num2.to_i)}"
# puts "Modulo/Remainder: #{modulo(num1.to_f, num2.to_i)}"
