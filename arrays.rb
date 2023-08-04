# # Arrays and Iterators
#
# nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#
# # print nums
# # puts
# p nums
# puts nums.last
#
# # Range
# x = 1..10
# p x.class
# p x.to_a.shuffle
#
# z = x.to_a.shuffle!
# p z
#
# x = (1..10).to_a
# x.reverse!
# p x
# p x.length
# x << 11
# p x
# x.unshift("raven")
# p x
# x.append("raven")
# p x
# p x.include?("raven")
#
# unique = x.uniq
# p unique
#
# b = []
# p b.empty?
# b.push("a")
# b.push("b")
# b.push("c")
# b.push("d")
# b.push("e")
# p b
# last_item = b.pop
# p last_item
# p b.join
# p b
# joined = b.join(", ")
# p joined
# split = joined.split(",")
# p split

# Iterators
name = %w[my name is Raven Paragas adn this is great!, Ruby is awesome]
p name
p name[0]

# for n in name
#   puts n
# end

name.each do |n|
  puts n
end

# prefered way
name.each { |n| p n.capitalize }

z = (1..100).to_a
p z.select { |num| num.odd? }

card_count = (1..13).to_a

hearts = card_count.map { |num| "♡ #{num}" }
spades = card_count.map { |num| "♤ #{num}" }
club = card_count.map { |num| "󱢟 #{num}" }
diamonds = card_count.map { |num| "♦ #{num}" }

cards = hearts + spades + club + diamonds

p cards.shuffle
