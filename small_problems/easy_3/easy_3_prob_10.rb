###############################################################################
# P - PROBLEM

# Write a method that takes a string argument, and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise.
# Characters that are not alphabetic should be ignored.

# 1 - INPUT: string
# 2 - OUTPUT: boolean

# 3 - alpha numeric only

# E - EXAMPLE

# Examples:
# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - take string argument
# 2 - remove all non alpha chars
# 3 - iterate thru string and check if each letter is uppercase
# 4 - return true if all letters are uppercase
# 5 - return false if any letters are not uppercase


# C - CODE

# string to array
def str_arr(str)
  str.delete("^A-Za-z").split("")
end

# iterate over array
def upcase_arr(str)
  upcase = []
  (str_arr(str)).each do |letter|
    up_lo = letter == letter.upcase ? true : false
    upcase << up_lo
  end
  upcase
end

# check uppercase
def uppercase?(str)
  (upcase_arr(str)).any?(false) ? false : true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false # ignores space
p uppercase?('FOUR SCORE') == true # ignores space
p uppercase?('4SCORE!') == true # ignores non-alpha chars
p uppercase?('') == true # empty string
