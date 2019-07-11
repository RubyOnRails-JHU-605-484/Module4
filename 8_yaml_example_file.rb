require 'yaml'
require 'pp'

class Butterfly
  attr_accessor :color, :wing_size  
end

b1 = Butterfly.new
b1.color = "red"; b1.wing_size = 10  

b2 = Butterfly.new
b2.color = "blue"; b2.wing_size = 5

# Serialize TO YAML file
File.write('butterflies.yml', [b1, b2].to_yaml)

# Deserialize FROM YAML file
butterflies = YAML::load_file('butterflies.yml')
p butterflies[1].color # => "blue"

 


