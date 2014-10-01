require 'date'

class Person
    attr_accessor :dob, :first_name, :surname, :emails, :phone_numbers, :relationship   
    
    def initialize(fname, surname, dob)
        @dob = Date.parse(dob)
        @first_name = fname.capitalize
        @surname = surname.capitalize
        @emails = []  
        @phone_numbers = []
    end
    
    
    def fullname
        "#{@first_name} #{@surname}"
    end 
    
    
    def add_email(mail)
        @emails.push (mail)
    end
    

    def add_phone(phone)
        @phone_numbers.push (phone)
    end   
    
    def remove_email(mail)
        @emails.delete_at (mail)
    end

    def to_s
     "#{@first_name} #{@surname} was born on #{@dob}.\n Their email addresses are: #{@emails}.\n Their phone numbers are #{@phone_numbers}"
    end
end


class FamilyMember < Person
    
    def initialize(fname, surname, dob, relationship)
        super(fname, surname, dob)
        @relationship = relationship
    end
    
end

class AddressBook

end