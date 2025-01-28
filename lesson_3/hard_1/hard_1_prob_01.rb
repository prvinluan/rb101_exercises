################################################################################
# What do you expect to happen when the greeting variable is referenced in the
# last line of the code below?

if false
  greeting = "hello world"
end

greeting

# Initially - my answer was this would throw an error, where Ruby would think
# that greeting is an undefined method. The if statement will also ignore the
# assignment, since everything in Ruby is true.

# The correct answer, is that nothing will happen. The variable greeting will
# have a the value of nil. An error is usually thrown where greeting would be
# undefined, but we have an if statement that initializes greeting to "hello
# world". However, since the condition is false, the assignment is ignored
# and greeting is assigned a nil value.
