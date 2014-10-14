require 'pry'

class Person
    attr_accessor :hair_color, :top_color, :Height
    #attr_reader :height
    
#   reader for getter, writer for setter
#    Instance Variables

    
#   @ makes them instance variables, will be availabe throughout the object/ make them an attribute 
    def initialize
        @hair_color = nil
        @height = 0.0
        @top_color = nil
    end
    
#    #setter methods
#    def hair_color=(color)
#        @hair_color = color
#    end
#    
#    #can use = and same name as the instanced variable
#    def height=(h)
#        @height = h
#    end  
#    
#        
#    def top_color=(top)
#        @top_colour = top
#    end
    
    
    
##any ruby method the last line within the method
#    
#    def hair_color
#        #return 
#        @hair_color
#    end
#    
#    def height
#        @height
#    end
#    
#    def top_color
#        @top_colour
#    end
#    
    def dance
        return 'Im dancing!'
    end
    
    
class Baby < Person
    attr_accessor :smells
    
    def cry
        "I'm crying!"
    end
    
end
        
end

binding.pry