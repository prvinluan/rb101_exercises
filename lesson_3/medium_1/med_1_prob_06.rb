################################################################################
# What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# => 34

# The following code will output 34. This is an example of pass by value,
# where a copy of the original object is passed around in the block - any
# operations made inside the method have no effect on the original object.

# The method returns the value of 50 when we pass it the argument of answer.

# The variable assignment new_answer is really unnecessary.

# On line 11, answer is pointing to the orignal object 42, and when we
# subtract 8 it returns 34.
