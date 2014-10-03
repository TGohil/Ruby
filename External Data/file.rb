#Ruby Docs - File

file = File.open('names.txt')

file.each do |line|
    puts line
end


#File.open('names.txt', 'w') do |file|
#        file.write "some text"
#end


#File.write('names.txt', "sme text")



File.open('names.txt', 'a') do |file|
        file.write "Another Person"
end