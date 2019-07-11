require_relative 'person' # load in person.rb
require_relative 'address' # load in address.rb

addr1 = Address.new("10 Lexington Market")
addr2 = Address.new("11100 Johns Hopkins Road")  

person1 = Person.new("Joe")
person1.add_addresses(addr1)
puts person1 # => Joe lives at 10 Lexington Market  

person2 = Person.new("Jim")  
person2.add_addresses(addr1, addr2)
puts person2 # => Jim lives at 10 Lexington Market and 11100 Johns Hopkins Road




