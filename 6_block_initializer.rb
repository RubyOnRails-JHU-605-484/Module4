class Person
  attr_accessor :name, :age, :height  

  def initialize
    yield self if block_given?
  end
  def to_s; "#{name}: #{age}, #{height}"; end  
end

p1 = Person.new do |p|  
  p.name = "Jim"  
  p.age = 15
  p.height = "six feet"  
end

p2 = Person.new do |p|  
  p.name = "Leonardo"
  p.age = 20
  p.height = "seven feet"  
end

puts p1 # => Jim: 15, six feet
puts p2 # => Leonardo: 20, seven feet

