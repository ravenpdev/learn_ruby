num = 10

# if/else
if num > 8
  # execute some code
  puts "greater than 8"
elsif num <= 8
  # execute some other code
  puts "equal to 8"
else
  puts "less than 8"
end

condition = true
another_condition = true

if condition && another_condition
  puts "both are true"
else
  puts "one of them is true"
end

if condition || another_condition
  puts "one of them is true"
end

if !condition
  puts "not true"
else
  puts "true"
end
