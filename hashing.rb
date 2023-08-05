# my_password = BCrypt::Password.create('mypassword')
# puts my_password
#
# puts my_password.version
# puts my_password.cost
# puts my_password == 'mypassword'
# puts my_password == 'notmypassword'
#
# my_password = BCrypt::Password.new('$2a$12$yYwEnvcGIvAzMWZFn.zd2uj8dpaRfC4JkWG6hvp.g4jRw96epMF7m')
# puts my_password == 'mypassword'
# puts my_password == 'notmypassword'

module Crud
  require 'bcrypt'
  puts 'Module CRUD activated'

  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def self.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def self.create_secure_users(list_of_users)
    list_of_users.each { |user| user[:password] = create_hash_digest(user[:password]) }
  end

  def self.authenticate_user(username, password, list_of_users)
    list_of_users.find do |user_record|
      return user_record if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
    end
  end
end
