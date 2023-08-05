require 'bcrypt'

my_password = BCrypt::Password.create('mypassword')
puts my_password

puts my_password.version
puts my_password.cost
puts my_password == "mypassword"
puts my_password == "notmypassword"
