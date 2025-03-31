################################################################################
# P - PROBLEM

# Using the multiply method from the "Multiplying Two Numbers" problem, write a
# method that computes the square of its argument (the square is the result of
# multiplying a number by itself).


# E - EXAMPLE

# Example:

# square(5) == 25
# square(-8) == 64

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - take two numbers
# 2 - multiply the numbers

# C - CODE

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64
