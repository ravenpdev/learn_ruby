dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717",
}

def get_city_names(records)
  records.keys
end

def get_area_code(records, key)
  records[key]
end

loop do
  puts "Do you want to lookup an area code base on a city name? (Y/N)"
  input = gets.chomp.downcase

  break if input != "y"

  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)

  print "Enter selection: "
  city = gets.chomp.downcase

  area_code = get_area_code(dial_book, city)
  puts area_code != nil ? "The area code for #{city} is #{area_code}" : "You entered a city name not in the dictionary"
end

#
# city_names = get_city_names(dial_book)
# puts city_names
#
# area_code = get_area_code(dial_book, "test")
# puts "Area code: #{area_code}"
# puts area_code.nil?
