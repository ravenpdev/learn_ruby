# hash / dictionary

sample_hash = { "a" => 1, "b" => 2, "c" => 3 }
p sample_hash

my_details = { "name" => "raven", "age" => 30, favcolor: "grey" }
p my_details
p my_details["name"]
p my_details[:favcolor]
p my_details.keys
p my_details.values

my_details.each { |key, value| puts "The class for key #{key.class} and the value is #{value}" }

my_hash = { a: 1, b: 2, c: 3, d: 4 }
my_hash[:e] = "Raven"
p my_hash
my_hash[:c] = "ruby"
p my_hash

p my_hash.select { |k, v| v.is_a?(String) }
my_hash.each { |k, v| my_hash.delete(k) if v.is_a?(String) }
p my_hash
