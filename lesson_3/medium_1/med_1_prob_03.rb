################################################################################
# Alan wrote the following method, which was intended to show all of the factors
# of the input number:

# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << (number / divisor) if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(5)
# => [1, 5]
p factors(8)
# => [1, 2, 4, 8]
p factors(0)
# => []
p factors(-4)
# => []

# Alyssa noticed that this will fail if the input is 0, or a negative number,
# and asked Alan to change the loop. How can you make this work without using
# the begin/end until construct? Note that we're not looking to find the factors
# for 0 or negative numbers, but we just want to handle it gracefully instead of
# raising an exception or going into an infinite loop.

# Bonus 1
# What is the purpose of the number % divisor == 0 ?

# The expression checks to see if the remainder between the division operation
# is zero.

# Bonus 2
# What is the purpose of the second-to-last line (line 8) in the method (the
# factors before the method's end)?

# Methods return the last evalauted line of expression, in this case factors,
# which is the value we want the method to return.
