# Numbers
puts 1 + 5
puts 5 - 4
puts 5 * 3
puts 10 / 4 # integer division
puts 10.to_f / 4
puts 3 ** 3

x = 5
y = 10
puts y / x

50.times { print "*" }

20.times { puts rand(10) } # generates a number 0 to 9

def divider(char = "-", num_of_char = 40)
  puts char * num_of_char
  # num_of_char.times { puts char }
end

puts "hello"
puts "hello".to_i
puts "hello".to_f

divider
puts "5" * 2
divider

puts "Simple calculator"
divider

puts "Enter the first number"
num1 = gets.chomp

puts "Enter the second number"
num2 = gets.chomp

puts "The first number multiplied by the second number is #{num1.to_i * num2.to_i}"
