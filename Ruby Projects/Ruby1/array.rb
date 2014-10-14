languages = ['English', 'French', 'Spanish', 'German']

languages.each do |l|
    puts 'I Love ' + l.to_s
end

puts ' '


#pop removes last item in array

languages.pop

puts languages

puts ' '


#push adds item to end of array

languages.push 'German'

puts languages