def two_times_implicit
  return "No block" unless block_given?
  yield  
  yield
end

def add_two_values
  return "No block" unless block_given?  
  arr = [1, 2]
  ret_val1 = yield arr[0]
  ret_val2 = yield arr[1]  
  ret_val1 + ret_val2
end

puts two_times_implicit { print "Hello "} 
# => Hello
# => Hello

# Preprocess the values before using
puts add_two_values { |val| val * 10} # => 30

