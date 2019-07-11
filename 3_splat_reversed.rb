# Splat reversed
def three_args_no_less_and_no_more (one, two, three)  
  puts "#{one}, #{two}, #{three}"
end

some_array = [1, 2, 3]

three_args_no_less_and_no_more(*some_array) # => 1, 2, 3


