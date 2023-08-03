# ==
# !=
# >
# <

# Basic of Comparison Operators

num = 10

puts 10 == 9
puts 10 == 10
puts 10 != 9
puts num == "10".to_i
puts num == "10".to_f
puts num === "10"
puts "hello" != "bye"
puts "hello" != "hello"
# compare type
puts num.eql? "10"
# compare obj
puts num.equal?("10")

# combined coparison operator
# if num < y return - 1
# if num == y return 0
# if num > y return 1
num = 15
puts num <=> 14
