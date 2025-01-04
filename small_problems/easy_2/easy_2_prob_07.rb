################################################################################
# P - PROBLEM

# Print all even numbers from 1 to 99, inclusive, to the console, with each
# number on a separate line.

# INPUT:
#   1 - integers 1 to 99
# OUTPUT:
#   1 - even integers

# 1 - 1 to 99, inclusive
# 2 - print each even integer on a new line

# E - EXAMPLE

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - is number even?
# 2 - if even, print integer
# 3 - if not, next number
# 4 - repeat until number 99 is reached

# C - CODE

# num = 1

# loop do
#   puts num if num.even?
#   num += 1
#   break if num == 100
# end

range = (1..99)

range.each { |num| puts num if num.even? }
