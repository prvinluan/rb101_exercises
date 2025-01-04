################################################################################
# P - PROBLEM

# Print all odd numbers from 1 to 99, inclusive, to the console, with each 
# number on a separate line.

# INPUT:
#   1 - (1..99)
# OUTPUT:
#   1 - odd numbers in range

# 1 - (1..99) inclusive
# 2 - print each odd integer on a new line

# E - EXAMPLE

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - check if x in range is odd
# 2 - if odd, print x
# 3 - if not, next number
# 4 - repeat until all numbers in given range have been iterated thru

# C - CODE

# ITERATOR
range = (1..99)

range.each do |x|
  if x % 2 == 0
    next
  else
    puts x
  end
end

# FOR LOOP
# range = (1..99)

# for x in range
#   puts x if x % 2 != 0
# end

# WHILE LOOP
# x = 1

# while x < 100
#   puts x if x.odd?
#   x += 1
# end

# DO WHILE LOOP
# x = 1

# loop do
#   puts x if x % 2 != 0
#   x += 1
#   break if x == 100
# end

