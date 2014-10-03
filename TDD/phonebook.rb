require 'pry'
require 'yaml'

file = File.open 'Phonebook_data.yml'

data = YAML::load(file)

binding.pry