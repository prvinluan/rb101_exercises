################################################################################
# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# This raises an exception because we are combining two
# different data types - a string and a number. The error
# will read "...no implicit conversion of Integer into String"

# To remedy this, we can approach it in two ways:

# First is to use String interpolation, where any value is
# converted into a string:
puts "the value of 40 + 2 is #{(40 + 2)}"

# Or, we simply use type conversion on the expression (40 + 2)
# before concatenating it to the given string:

puts "the value of 40 + 2 is " << (40 + 2).to_s
