puts 'What is your first name?'
first_name = gets.chomp

puts "Thank you, you said your first name is #{first_name.capitalize}"

puts 'Enter a number to multiply by 2'
input = gets.chomp.to_i
puts input * 2
