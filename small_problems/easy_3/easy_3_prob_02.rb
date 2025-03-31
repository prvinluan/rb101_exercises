################################################################################
# P - PROBLEM

# Write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers: addition,
# subtraction, product, quotient, remainder, and power. Do not worry about
# validating the input.

# 1 - INPUT: 2 integer
# 2 - OUTPUT: string, expression for each operation performed

# E - EXAMPLE

# Example
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - ask for first integer
# 2 - ask for second integer
# 3 - compute sum of the two integers
# 4 - compute the difference of the two integers
# 5 - compute the product of the two integers
# 6 - compute the quotient of the two integers
# 7 - compute the remainder of the two integers
# 8 - compute the power of the two integers

# C - CODE

def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
num1 = gets.chomp.to_i

prompt("Enter the second number:")
num2 = gets.chomp.to_i

prompt("#{num1} + #{num2} = #{num1 + num2}")
prompt("#{num1} - #{num2} = #{num1 - num2}")
prompt("#{num1} * #{num2} = #{num1 * num2}")
prompt("#{num1} / #{num2} = #{num1 / num2}")
prompt("#{num1} % #{num2} = #{num1 % num2}")
prompt("#{num1} ** #{num2} = #{num1**num2}")
