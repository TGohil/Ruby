require 'pry'

class Person
    attr_accessor :hair_color, :top_color, :height

    
    def initialize(height = 0.0)
        @height = height
    end
 
    def dance
        return "I'm dancing"
    end

    def to_s
        #   no need for to_s
        return "tall: #{@height}"
    end
        
end

#   Child of Person
class Baby < Person
    attr_accessor :smells
    
    #   using super to push up to parent initialize class
    #   This initialize method would override the prvious one without SUPER
    
    def initialize(height = 0.0)
        @smells= true
        super
    end
    
    
    def cry
        if @smells
            "I'm crying!"
        else
            "NOPE"
        end
    end
  
    #   Override the method of the subclass
    def dance
        "I'm a baby, I can't dance"
    end
    
end

binding.pry