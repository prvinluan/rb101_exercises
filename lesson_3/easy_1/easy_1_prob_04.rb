################################################################################
#
# PROBLEM:
#
# The Ruby Array class has several methods for removing items from the array. 
# Two of them have very similar names. Let's see how they differ:
#
# numbers = [1, 2, 3, 4, 5]
#
# What do the following method calls do (assume we reset numbers to the 
# original array between method calls)?
#
# numbers.delete_at(1)
# numbers.delete(1)

# SOLUTION:
#
# Array#delete_at, passes the index of the desired element to be removed from
# the given array and returns the deleted element.
#
# ex:
#
# numbers = [1, 2, 3, 4, 5]
#
# numbers.delete_at(1)
# => 2
#
# p numbers
# => [1, 3, 4, 5]
#
# Array#delete, passes the desired element as an argument and removes that
# element from the array. It returns the removed element.
#
# ex:
#
# numbers = [1, 2, 3, 4, 5]
#
# numbers.delete(1)
# => 1
#
# p numbers
# => [2, 3, 4, 5]
#
# Both methods are mutating methods.
