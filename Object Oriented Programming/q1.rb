require 'Pry'

class Person
    attr_accessor :dob, :first_name, :surname, :emails, :phone_numbers
    
    
    
    def initialize(firstname = "joe", lastname = "bloggs", dob = "01/04/1991")
        @first_name = firstname
        @surname = lastname
        @dob = dob
        @emails = []
        @phone_numbers = []
    end
    
    
    #setter methods
    def add_email=(mail)
        emails.push (mail)
    end
    
    def remove_email=(mail)
        emails.delete_at (mail)
    end
    
    
    def add_phone=(phone)
        phone_numbers.push (phone)
    end
    
    def remove_phone=(phone)
        phone_numbers.delete_at (phone)
    end
    
    def fullname
        return @first_name.capitalize + " " + @surname.capitalize
    end
    
    def to_s
        "#{@first_name} was born on #{@dob}.\n Their email addresses are: #{@emails}.\n Their phone numbers are #{@phone_numbers}"
    end

    
end

binding.pry