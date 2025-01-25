################################################################################
# PROBLEM:
#
# Describe the difference between ! and ? in Ruby. And explain what would happen
# in the following scenarios:
#
# "!" vs. "?"
#
# The "!" operator, when used as a prefix negates value of an object (turning a
# truthy into a falsy). When used as a suffix to method, the method will mutate
# the argument/caller.
#
# The "?" suffix indicates that a method returns a Boolean value.
#
# 1 - what is != and where should you use it?
#
# != (not equal to), a comparison operator used to check if anything on the left
# is not equal to anything on the right. Should be used in conditionals.
# 
# 2 - put ! before something, like !user_name
# 
# When ! is used as a prefix, it negates the value of the expression.
#
# 3 - put ! after something, like words.uniq!
#
# The bang suffix is used to indicate that a method mutates it's arguments/
# caller.
#
# 4 - put ? before something
#
# An error is thrown, when ? is place before an object.
#
# 5 - put ? after something
#
# When ? is placed after something, like hash.has_key?, it indicates
# that the method returns a Boolean value - true/false.
#
# 6 - put !! before something, like !!user_name
#
# Double bang before something will turn the object into a Boolean value.
#
# Ex:
#
# !!"String"
# -> true
#
# !!100
# -> true
#
# !!false
# -> false
#
# The first ! negates the objects value, causing it to return false, and
# when the second ! is used, it flips it to it's opposite value.
