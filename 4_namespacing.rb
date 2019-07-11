module Toolbox
  class Ruler  
    attr_accessor :length
  end
end

module Country
  class Ruler  
    attr_accessor :name
  end  
end

ruler1 = Toolbox::Ruler.new; ruler1.length = 20
puts ruler1.length # => 20

ruler2 = Country::Ruler.new; ruler2.name = "Czar Nicolai"
puts ruler2.name # => Czar Nicolai


