################################################################################
# P - PROBLEM

# Write a method that returns true if its integer argument is palindromic,
# false otherwise. A palindromic number reads the same forwards and backwards.

# 1 - INPUT: integer
# 2 - OUTPUT: boolean

# E - EXAMPLE

# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - take integer argument
# 2 - convert integer to string
# 3 - reverse string
# 4 - convert string to integer
# 5 - compare reversed integer to original argument

# C - CODE

def palindromic_number?(num)
  num == num.to_s.reverse.to_i
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
p palindromic_number?(00100) == true
