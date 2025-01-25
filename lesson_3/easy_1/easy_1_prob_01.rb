################################################################################
# PROBLEM:

# What would you expect the code below to print out?

# numbers = [1, 2, 2, 3]
# numbers.uniq

# puts numbers

# SOLUTION:

=begin
The Array#uniq method returns a new array containing all elements without the
duplicates. This method is non-destructive, the argument is passed by value -
resulting the code to output the original object.

-> 1
-> 2
-> 2
-> 3
=end
