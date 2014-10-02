require 'spec_helper'

describe "The Address Class" do
    
    it "should add entries to address book" do
        person1 = Person.new("joe", "bloggs", "1 Jan 1990")
        person2 = Person.new("andy", "nother", "2 Jan 1995")
        book = Addressbook.new
        
        expect(book.list).to eq([])
        
        book.add person1
        book.add person2
        
        expect(book.list).to eq([person1, person2])
        
        
        
    end
    
end