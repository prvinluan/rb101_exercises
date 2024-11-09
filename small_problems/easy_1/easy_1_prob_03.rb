# P - PROBLEM
# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# P - PROBLEM

# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

# 1 - INPUT: takes one argument, positive integer
# 2 - OUTPUT: returns a string of alternating 1s and 0s
# 3 - string starts at one
# 4 - length of string should match the given integer

# E - EXAMPLES

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# The tests above should print true.

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - accept an argument, positive integer
# 2 - create empty string
# 3 - counter set to 0
# 4 - add 1 to counter
# 5 - is counter odd? add "1" to string
# 6 - is counter even? add "0" to string
# 7 - is counter same as argument value? stop running if true, continue if false

# C - CODE

def stringy(num)
  string = ""
  count = 0
  loop do
    count += 1
    if count % 2 == 1
      string += "1"
    else
      string += "0"
    end
    break if count == num
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
