################################################################################
# P - PROBLEM

# Build a program that displays when the user will retire and 
# how many years she has to work till retirement.

# 1 - INPUT:
#     - current age (integer)
#     - desired age of retirement (integer)
# 2 - OUTPUT: 
#     - current year (date)
#     - year of retirement (date)
#     - number of years before retirement (integer)
# 3 - Output within string messages
# 4 - Calculate the ff:
#     - year of desired retirement age
#     - how many more years before retirement

# E - EXAMPLE

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - ask user for their current age
# 2 - ask user for their desired age of retirement
# 3 - output the current year
# 4 - calculate what year user would like to retire
# 5 - output the year of retirement
# 6 - calculate how many more years before retirement
#     is reached
# 7 - output years left before retirement

# C - CODE

print "What is your age? "
current_age = gets.chomp
print "At what age would you like to retire? "
retirement_age = gets.chomp
working_years = retirement_age.to_i - current_age.to_i

current_date = Time.new
current_year = current_date.year
retirement_year = current_year + working_years

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{working_years} years of work to go!"
