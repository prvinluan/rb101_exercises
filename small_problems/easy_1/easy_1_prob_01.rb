# P - PROBLEM
# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# P - PROBLEM

# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# E - EXAMPLE

# repeat('Hello', 3)

# Hello
# Hello
# Hello

# D - DATA STRUCTURE

# takes in a string and an integer argument
# outputs a string

# A - ALGORITHM

# 1 - accept string and int
# 2 - print string number of int times

# C - CODE

def repeat(string, int)
  loop do 
    puts string
    int -= 1
    break if int == 0
  end
end

repeat('Hello', 3)
