class Person  include Comparable
  attr_accessor :name, :age  

  def initialize (name, age)
    @name = name
    @age = age
  end

  def <=> (other)
    @age <=> other.age
  end  
end

people = [Person.new("Joe", 13), 
  Person.new("Joel", 10), Person.new("Rich", 11)]  
puts "Unsorted people: #{people.map(&:name)}"
# => Unsorted people: ["Joe", "Joel", "Rich"]

puts "Sorted people: #{people.sort.reverse.map(&:name)}"  
# => Sorted people: ["Joe", "Rich", "Joel"] (descending)  
puts people[2].between?(people[1], people[0]) # => true

