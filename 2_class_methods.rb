class MathFunctions
  def self.double(var) # 1. Using self.
    var * 2
  end
  class << self # 2. Using << self
    def triple(var)
      var * 3
    end
  end
end

def MathFunctions.quardruple(var) # 3. Using MathFunctions.
  var * 4
end

# No instance created!
puts MathFunctions.double 5     # => 10
puts MathFunctions.triple 5     # => 15
puts MathFunctions.quardruple 5 # => 20