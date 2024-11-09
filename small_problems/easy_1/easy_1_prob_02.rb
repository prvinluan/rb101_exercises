# P - PROBLEM
# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# P - PROBLEM

# Write a method that takes one integer argument, which may be positive, negative, or zero. 
# This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

# 1 - accepts one integer, can be -/+ or 0
# 2 - returns true if value is odd
# 3 - argument is a valid integer

# Keep in mind that you're not allowed to use #odd? or #even? in your solution.

# E - EXAMPLE

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# D - DATA STRUCTURE

# Boolean value - true if odd

# A - ALGORITHM

# 1 - accept integer
# 2 - check if integer is divisible by two?
# 3 - if divisible, integer is even, print false.
# 4 - if not, integer is odd, print true.

# C - CODE

def is_odd?(num)
  # if num % 2 != 0
  #   true
  # else
  #   false
  # end

  num % 2 != 0 ? true : false
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# The Integer#remainder method performs a remainder operation in Ruby. Rewrite #is_odd? to use Integer#remainder instead of %. 
# Note: before version 2.4, Ruby used the Numeric#remainder method instead.

#def is_odd?(num)
#  num.remainder(2) != 0 ? true : false
#end
