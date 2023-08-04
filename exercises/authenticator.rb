def auth_user(username, password, records)
  return records.find { |user| user[:username] == username && user[:password] == password }
end

users = [
  { username: "raven", password: "password" },
  { username: "kristine", password: "password" },
]

puts "Welcome to the authenticator"
puts "-" * 40
puts "This program will take input from the user and compare password"

attempt = 1
while attempt < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  user = auth_user(username, password, users)

  if not user.nil?
    p user
  else
    puts "Credentials were not correct"
  end

  puts "Press n to quit or any other key to continue"
  key = gets.chomp.downcase
  attempt += 1

  break if key == "n"
end

puts "You have exceeded the number of attempts" if attempt > 3
