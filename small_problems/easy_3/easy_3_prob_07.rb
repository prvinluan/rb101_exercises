################################################################################
# P - PROBLEM

# Write a method that returns true if the string passed as an argument is a
# palindrome, false otherwise. A palindrome reads the same forward and backward.

# For this exercise, case matters as does punctuation and spaces.

# 1 - INPUT: string
# 2 - OUTPUT: boolean

# 3 - palindrome: reads the same forward and backward ex: anna
# 4 - case, punctuation and spaces matter

# E - EXAMPLE

# Examples:

# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - take string argument
# 2 - reverse string argument
# 3 - compare original string and reversed string
# 4 - return true if the two strings are equal
# 5 - return false if the two strings are not equal

# C - CODE

def palindrome?(str)
  str == str.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?([1, 2, 3, 3, 2, 1]) == true # can be used on arrays
