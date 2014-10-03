#   The code here is as much as I could manage to work out. The tests worked up until trying to test for the yaml file. I have decided that I can better spend my time in other areas away from developing more code as I am no longer progressing


require 'date'
require 'yaml'
require 'pry'

#   person class for creating new instances of Person
class Person
    attr_accessor :dob, :first_name, :surname, :emails, :phone_numbers, :relationship   
    
    def initialize(fname, surname, dob)
        @dob = Date.parse(dob)
        @first_name = fname.capitalize
        @surname = surname.capitalize
        @emails = []  
        @phone_numbers = []
    end
    
    #   shows Full Name with first and last name
    def fullname
        "#{@first_name} #{@surname}"
    end 
    
    #   Adds email addresses to emails array as string
    def add_email(mail)
        @emails.push (mail)
    end
    
    #   Adds phone numbers to array
    def add_phone(phone)
        @phone_numbers.push (phone)
    end   
    
    #   Removes the first email address in the array
    def remove_email(mail)
        @emails.delete_at (mail)
    end

    #   List the person details sentence with line breaks
    def to_s
     "#{@first_name} #{@surname} was born on #{@dob}.\n Their email addresses are: #{@emails}.\n Their phone numbers are #{@phone_numbers}"
    end
end

#   Inherited class from Person
class FamilyMember < Person
    
    def initialize(fname, surname, dob, relationship)
        super(fname, surname, dob)
        @relationship = relationship
    end
    
end


#   An addressbook that will add people in using the instances from People class
class Addressbook
    attr_accessor :data, :lists
    
    def initialize
        @lists = []
    end

    #   Add person to the lists array
    def add (person)
        if person.is_a? Person
            @lists << person
        else
            raise "Only objects that are relate to class Person can only be entered in the address book."
        end
    end

    #   Prints the list of entries in terminal
    def list
        return @lists
    end
    
    #   Loads yaml file with data from the hash list
    def load_yaml(file)
        @data = YAML.load(File.open(file))

        @data["people"].each do |yaml_person|
            person = Person.new(yaml_person["fname"], yaml_person["surname"], yaml_person["dob"])

            yaml_person["emails"].each do |e|
                person.add_email(e)
            end

            yaml_person["phones"].each do |e|
                person.add_phone(e)
            end

            add(person) 
        end
    end

    
end

#binding.pry