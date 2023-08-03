# Ask user to enter first name and last name
# Display user full name
# Reverse user full name
# Display user full name total number of characters

puts 'Enter first name'
first_name = gets.chomp

puts 'Enter last name'
last_name = gets.chomp

full_name = "#{first_name.capitalize} #{last_name.capitalize}"
num_of_chars = full_name.length

puts "Your full name is #{full_name}"
puts "Your full name reversed is #{full_name.reverse}"
puts "Your name has #{num_of_chars} characters in it."
