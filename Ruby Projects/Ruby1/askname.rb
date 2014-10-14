#Ask for name, month and year of birth

puts 'Enter Name'
name = gets.chomp

puts 'Month Of Birth'
month = gets.to_i

puts 'Year'
year = gets.to_i

puts 'Current Year'
current = gets.to_i

puts current - year

#check if under 6 or over 70
if (current - year < 6) || (current - year > 70)
    puts 'Your computing skills are excellent!'
end

#puts 'Your computing skills are excellent!' if (current - year < 6) || (current - year > 70)


#under 16 ask parents permission

if current - year < 16
    puts 'Do you have parents permission?'
    ask = gets.chomp
        if ask == 'yes'
            puts current - year
        end
end