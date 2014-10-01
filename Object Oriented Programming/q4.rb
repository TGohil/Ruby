require 'pry'

class Person
    attr_accessor :dob, :first_name, :surname, :emails, :phone_numbers, :relationship
    
    
    
    def initialize(firstname = "joe", lastname = "bloggs", dob = "01/01/1990", rel = "dad")
        @first_name = firstname
        @surname = lastname
        @dob = dob
        @emails = []
        @phone_numbers = []
        @relationship = rel
    end
    
    
    #setter methods
    def add_email=(mail)
        emails.push (mail)
    end
    
    def add_phone=(phone)
        phone_numbers.push (phone)
    end
    
    
    #remove from array
    def remove_email=(mail)
        emails.delete_at (mail)
    end
    
    def remove_phone=(phone)
        phone_numbers.delete_at (phone)
    end
    
    #display full name with first and last name
    def fullname
        return @first_name.capitalize + " " + @surname.capitalize
    end
    
    #overwrite the to_s method
#    def to_s
#        "#{@first_name} was born on #{@dob}. \n Their email addresses are: #{@emails}. \n Their phone numbers are #{@phone_numbers}"
#    end
    
    #print details
    def print_details
        puts @first_name.capitalize + " " + @surname.capitalize
        puts ' '
        
        puts 'Date of Birth: ' + @dob
        
        puts ' '
        puts 'Email Addresses: '
        
        emails.each do |e|
            puts "  - " + e.to_s
        end
        
        puts ' '
        puts 'Phone Numbers: '
        
        phone_numbers.each do |p|
            puts "  - " + p.to_s
        end
    end

    
end


#Familymember class, child of Person
class Familymember < Person

    def initialize(rel = "dad")
        super
    end
    
    def changerel=(rel)
        @relationship = rel
    end
    
    def happy
        if (rel == "dad")
            return "We are Related!"
        else
            return "WHO ARE YOU"
        end
    end
    
end


class Address
    
    def initialize
        @lists = []
    end
    
    def add (person)
        @lists.push (person)
    end
    
    def lists
        return @lists
    end
end


binding.pry