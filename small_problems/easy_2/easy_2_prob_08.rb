################################################################################
# P - PROBLEM

# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer.

# INPUT:
#   1 - integer for range
#   2 - string for mathematical operation
# OUTPUT:
#   1 - integer, product or sum of range

# 1 - user must input integer greater than 0
# 2 - user must input "s" for sum, "p" for input
# 3 - the product or sum of range is inclusive, 1 to number (user input)

# E - EXAMPLE

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.

# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - ask user for any integer greater than 0
# 2 - ask user what operation to perform
# 3 - if user types "s", add all numbers between 1 and given number
# 4 - if user types "p", multiply all numbers between 1 and given number
# 5 - print the sum or product

# C - CODE

def number
  num = nil
  loop do
    puts "Please enter an integer greater than 0: "
    num = gets.chomp.to_i
    if num <= 0
      puts "Sorry, enter a number greater than 0"
    else
      break
    end
  end
  num
end

def operation
  compute = nil
  loop do
    puts "Enter 's' to compute the sum, 'p' to compute the product."
    compute = gets.chomp.downcase
    if compute == "s" || compute == "p"
      break
    else
      puts "Sorry, you must either enter 's' for sum or 'p' for product"
    end
  end
  compute
end

# if compute == "s"
#   x = 0
#   counter = 1
#   loop do
#     x += counter
#     counter += 1
#     break if counter == num
#   end
#   puts x
#   puts counter
# end

def sum(num)
  x = 0
  count = 1
  loop do
    x += count
    break if count == num
    count += 1
  end
  x
end

# if compute == "p"
#   x = 1
#   counter = 1
#   loop do
#     x *= counter
#     counter += 1
#     break if counter > num
#   end
#   puts x
#   puts counter
# end

def product(num)
  x = 1
  count = 2
  loop do
    x *= count
    break if count == num
    count += 1
  end
  x
end

def sum_product
  num = number
  comp = operation
  if comp == "s"
    puts "The sum of the integers between 1 and #{num} is #{sum(num)}."
  else
    puts "The product of the integeres between 1 and #{num} is #{product(num)}."
  end
end

sum_product
