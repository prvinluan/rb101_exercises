################################################################################
# Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator.
# A user passes in two numbers, and the calculator will keep computing the
# sequence until some limit is reached.

# Ben coded up this implementation but complained that as soon as he ran it, he
# got an error. Something about the limit variable. What's wrong with the code?

def fib(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# How would you fix this so that it works?

# Methods can't access variables that are out of scope - variables that aren't
# initialized within the method itself. For a method to access it, we can either
# move the limit variable inside the method, or simply pass the variable as an
# argument.

# I chose to move the limit variable inside the method instead.
