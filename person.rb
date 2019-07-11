
# person.rb
class Person
  attr_accessor :name, :addresses # create attribute accessors
  def initialize (name)  
    @name = name  
    @addresses = []
  end
  def add_addresses(*addresses)
    # stuffs all passed in params into addresses array
    @addresses = addresses 
  end
  def to_s
    "#{@name} lives at #{@addresses.join(" and ")}"
  end
end


