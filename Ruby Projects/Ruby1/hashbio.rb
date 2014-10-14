require 'pry'


bio = {}
puts 'Enter Name'
bio[:name] = gets.chomp

puts 'age'
bio[:age] = gets.chomp

puts 'Enter height in feet'
bio[:height] = gets.chomp

puts 'Enter Shoe size'
bio[:shoe] = gets.chomp

puts 'Enter Relative names as comma seperated list'
bio[:relatives] = gets.chomp.split(",")

puts ' '

bio.each do |k,v|
    binding.pry
    puts v.to_s; put
end