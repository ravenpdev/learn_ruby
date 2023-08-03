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

puts "Enter first number: "
num1 = gets.chomp

puts "Enter second number: "
num2 = gets.chomp

puts "Sum: #{sum(num1.to_i, num2.to_i)}"
puts "Difference: #{diff(num1.to_i, num2.to_i)}"
puts "Product: #{product(num1.to_i, num2.to_i)}"
puts "Quotient: #{quotient(num1.to_f, num2.to_i)}"
puts "Modulo/Remainder: #{modulo(num1.to_f, num2.to_i)}"
