class Dog
  def to_s
    "Dog"
  end
  def bark
    "barks"    
  end
end
class SmallDog < Dog
  def bark # Override
    "barks quietly"
  end  
end

dog = Dog.new
small_dog = SmallDog.new
puts "#{dog} #{dog.bark}" # => Dog barks
puts "#{small_dog} #{small_dog.bark}" # => Dog barks quietly

