################################################################################
# P - PROBLEM

# The || operator returns a truthy value if either or both of its operands are
# truthy. If both operands are falsey, it returns a falsey value. The && operator
# returns a truthy value if both of its operands are truthy, and a falsey value
# if either operand is falsey. This works great until you need only one of two
# conditions to be truthy, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise.
# Note that we are looking for a boolean result instead of a truthy/falsy value
# as returned by || and &&.

# 1 - INPUT: expression
# 2 - OUTPUT: boolean

# 3 - || - true if one or both operands are truthy
#          false if both operands are falsy
# 4 - && - true if both operands are truthy
#          false if one or both are falsy
# 5 - exclusive or - true if one operand is truthy
#                    false if operands are both true or false

# E - EXAMPLE

# Examples:
# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false
# p xor?('abc', nil) == true
# p xor?(nil, 'abc') == true
# p xor?('abc', 'abc') == false
# p xor?(nil, nil) == false

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - take two arguments
# 2 - if first argument is truthy
# 3 - if second argument is truthy, return false
# 4 - if second argument is falsy, return true
# 5 - if first argument is falsy
# 6 - if second argument is truthy, return true
# 7 - if second argument is falsy, return false

# C - CODE

def xor?(arg1, arg2)
  return true if (arg1 && !arg2) || (!arg1 && arg2)
  false
  # if arg1
  #   if arg2
  #     false
  #   else
  #     true
  #   end
  # else
  #   if arg2
  #     true
  #   else
  #     false
  #   end
  # end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
p xor?('abc', nil) == true
p xor?(nil, 'abc') == true
p xor?('abc', 'abc') == false
p xor?(nil, nil) == false

################################################################################
# Further Exploration

# Can you think of a situation in which a boolean xor method would be useful?
# Suppose you were modeling a light at the top of a flight of stairs wired in
# such a way that the light can be turned on or off using either the switch at
# the bottom of the stairs or the switch at the top of the stairs. This is an
# xor configuration, and it can be modeled in Ruby using the xor method. Think
# of some additional examples.

# cross intersection of traffic

# || and && are so-called short circuit operators in that the second operand is
# not evaluated if its value is not needed. Does the xor method perform
# short-circuit evaluation of its operands? Why or why not? Does short-circuit
# evaluation in xor operations even make sense?

# xor method needs both arguments to be evaluated, as only one argument can be
# true and can't be both true or both false.
