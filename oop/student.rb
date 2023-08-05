# $LOAD_PATH << '../'

require '../hashing'

class Student
  include Crud

  attr_accessor :first_name, :last_name, :email, :username
  attr_reader :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  # def first_name=(name)
  #   @first_name = name
  # end
  #
  # def first_name
  #   @first_name
  # end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}"
  end
end

raven = Student.new('raven', 'paragas', 'ravenp', 'ravenp.dev@gmail.com', 'password123')
tin = Student.new('kristine', 'paragas', 'tin', 'tin@gmail.com', 'password123')

puts raven
puts tin
puts tin.password

puts raven.create_hash_digest(raven.password)
