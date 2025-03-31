################################################################################
# P - PROBLEM

# Write another method that returns true if the string passed as an argument is
# a palindrome, false otherwise. This time, however, your method should be
# case-insensitive, and it should ignore all non-alphanumeric characters.
  
# If you wish, you may simplify things by calling the palindrome? method you
# wrote in the previous exercise.

# 1 - INPUT: string
# 2 - OUTPUT: boolean

# 3 - only alpha numerics
# 4 - case does not matter

# E - EXAMPLE

# Examples:

# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - take string argument
# 2 - remove non alpha-numeric chars
# 3 - lowercase string
# 4 - reverse string argument
# 5 - compare original argument and reversed
# 6 - return true if palindrome
# 7 - return false if not

# C - CODE

def real_palindrome?(str)
  str.downcase!
  str.delete!("^a-z0-9")
  str == str.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

#def palindrome(str)
#  str == str.reverse
#end
#
#def real_palindrome?(str)
#  str = str.downcase.gsub(/[^a-z0-9]/, "")
#  palindrome(str)
#end
#
#p real_palindrome?('madam') == true
#p real_palindrome?('Madam') == true           # (case does not matter)
#p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
#p real_palindrome?('356653') == true
#p real_palindrome?('356a653') == true
#p real_palindrome?('123ab321') == false
