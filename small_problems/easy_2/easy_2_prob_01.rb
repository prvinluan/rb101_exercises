################################################################################

# P - PROBLEM

# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200.

# 1 - INPUT: none
# 2 - OUTPUT: string
# 3 - age is generated randomly between 20 - 200
# 4 - output contains age within a message

# E - EXAMPLE

# Example Output

# Teddy is 69 years old!

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - ramdomly generate age
# 2 - print generated age within a message

# C - CODE

age = rand(2..200)
puts "Teddy is #{age} years old!"

# Modify this program to ask for a name, and then print the age for that person.

# A - ALGORITHM

# 1 - ask for name
# 2 - randomly generate age
# print name with age within message

# C - CODE

# puts "Enter name: "
# name = gets.chomp
# age = rand(2..200)
# puts "#{name} is #{age} years old!"

# For an extra challenge, use "Teddy" as the name if no name is entered.

puts "Enter name: "
name = gets.chomp
name == "" ? name = "Teddy" : name
age = rand(2..200)
puts "#{name} is #{age} years old!"
