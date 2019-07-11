class RangePrinter
  def self.one_up_to_another(one, another)
    # As long as ‘one’ can respond to :upto method  
    # we don't really care what type it is
    # In Java or C# - these would probably need to be 2 separate methods
    # (Or a common interface would need to be defined)
    one.upto(another){|x| print x}
  end
end

a1 = 5; a2 = 7
b1 = "a8"; b2 = "b3"
puts RangePrinter.one_up_to_another a1, a2 # => 567
puts RangePrinter.one_up_to_another b1, b2 # => a8a9b0b1b2b3



