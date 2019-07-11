require 'yaml'
require 'pp'

class Butterfly
  attr_accessor :color, :wing_size  
end

b1 = Butterfly.new
b1.color = "red"; b1.wing_size = 10  

b2 = Butterfly.new
b2.color = "blue"; b2.wing_size = 5

# Serialize TO YAML
yaml_data = [b1, b2].to_yaml

# Deserialize FROM YAML
butterflies = YAML::load yaml_data
pp butterflies 
# => [#<Butterfly:0x007fcb7115d850 @color="red", @wing_size=10>,
# =>  #<Butterfly:0x007fcb7115d148 @color="blue", @wing_size=5>]
 


