def two_times_explicit (&some_block)  
  return "No block" if some_block.nil?  
  
  some_block.call
  some_block.call
end

def two_times_explicit_with_param (some_var, &some_block)
  some_block.call(some_var)
  some_block.call(some_var)
end

puts two_times_explicit # => No block
two_times_explicit { puts "Hello"} 
# => Hello
# => Hello

two_times_explicit_with_param "Hello" do |param|  
  print param + " "
end
# => Hello Hello

