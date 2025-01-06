################################################################################
# P - PROBLEM

# Write a method that takes a number as an argument. If the argument is a
# positive number, return the negative of that number. If the number is 0
# or negative, return the original number.

# INPUT: integer(+/-, 0)
# OUTPUT: integer(+/-, 0)

# 1 - method takes and returns a +/- integer, including 0

# E - EXAMPLE

# All test cases should return true
# puts negative(5) == -5
# puts negative(-3) == -3
# puts negative(0) == 0

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - method is given a number
# 2 - if number is negative, return number
# 3 - if number is zero, return number
# 4 - if number is positive, return the negated number

# C - CODE

def negative(num)
  if num.negative? || num == 0
    num
  else
    -num
  end
end

puts negative(5) == -5 # => True
puts negative(-3) == -3 # => True
puts negative(0) == 0 # => True

__END__

def negative(number)
  -number.abs
end

Is #abs superior to a ternary operator? It may be shorter, but I think that
it becomes unecessary, given that certain number are already negative.
