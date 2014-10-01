require 'spec_helper'

describe "The FamilyMember Class" do
    
    it "if object is of class Person or FamilyMember" do
        lol = Person.new("a", "b", "1 Oct 1990")
        trishul = FamilyMember.new("a", "b", "1 Oct 1990", "child")
        
        expect(trishul.relationship).to eq("child")
        #is_a? is asking if the left is the thing on the right
        expect(trishul.is_a? Person)
    end
end