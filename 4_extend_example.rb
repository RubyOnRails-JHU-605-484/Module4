module Finder
  def find_by_name(name) # case-insensitive find by name
    things.detect { |thing| thing.name.downcase == name.downcase }
  end  
end

# Makes Finder’s methods class methods for this class
class Dog extend Finder
  attr_accessor :name  

  def initialize(name)
    Dog.things << self # Add any instance created to class method things
    @name = name
  end
  def self.things
    @@things ||= [] # Keep track of all dog instances created
  end  
end

Dog.new("Red"); Dog.new("Blue"); Dog.new("Green")  
puts Dog.find_by_name("blue").name # => Blue

