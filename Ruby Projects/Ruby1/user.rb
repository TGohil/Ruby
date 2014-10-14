#ask for username and age in years

puts 'Username:'
user = gets.chomp
puts user

puts 'Age'
age = gets.to_i
puts age * 365 * (24 * (60 * 60) )