# P - PROBLEM
# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# P - PROBLEM

# Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

# 1 - INPUT: integer
# 2 - OUTPUT: integer
# 3 - positive integer argument returns that number reversed (mirror)
# 4 - if digits have zeros in the end, zeros are ignored when reversed

# E - EXAMPLE

# reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - take positive integer argument
# 2 - reverse integer
# 3 - check until first digit is not zero, remove if so
# 4 - return the value of the reversed integer

# C - CODE

def reversed_number(num)
  num.to_s.reverse.to_i
end

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1
