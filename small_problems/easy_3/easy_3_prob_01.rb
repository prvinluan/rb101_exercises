################################################################################
# P - PROBLEM

# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5
# numbers.

# 1 - INPUT: integers (as strings)
# 2 - OUTPUT: string message

# 3 - repeat numbers ok
# 4 - <= 0 not accounted for

# E - EXAMPLE

# Examples:
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - ask for number 1
# 2 - ask for number 2
# 3 - ask for number 3
# 4 - ask for number 4
# 5 - ask for number 5
# 6 - ask for number 6
# 7 - determine if number 6 is present in previous 5 numbers.
# 8 - print message whether or not number 6 is present in previous
#     5 numbers.

# C - CODE

nums = []
nth = ["first", "second", "third", "fourth", "fifth", "last"]

6.times do |counter|
  puts "==> Enter the #{nth[counter]} number:"
  num = gets.chomp.to_i
  nums << num
end

last = nums.pop
if nums.any?(last)
  puts "The number #{last} appears in #{nums}."
else
  puts "The number #{last} does not appear in #{nums}."
end
