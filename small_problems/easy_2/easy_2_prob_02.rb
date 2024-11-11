################################################################################

# P - PROBLEM

# Build a program that asks a user for the length and width of a room in meters 
# and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# 1 - INPUT: 2 integers
# 2 - OUTPUT: 2 numbers, an integer(sq m) and a float(sq ft)
# 3 - length x width = area (square meter)
# 4 - 1 sq m == 10.7639 sq ft

# E - EXAMPLE
# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - ask user for length (meter)
# 2 - ask use for width (meter)
# 3 - calculate for area (sq meter)
# 4 - convert area into square feet
# 5 - output area both in square meter and feet

# C - CODE

# def area
#   puts "Let's calculate the area of the room: "
#   puts "Enter the length in meters: "
#   length = gets.chomp
#   puts "Enter the width in meters: "
#   width = gets.chomp
#   area_sqm = length.to_f * width.to_f
#   area_sqf = area_sqm * 10.7639
#   "The area of the room is #{area_sqm} square meters or #{area_sqf} square feet"
# end

# puts area

# Modify this program to ask for the input measurements in feet, and display the 
# results in square feet, square inches, and square centimeters.

# A - ALGORITHM

# 1 - ask user for length (meter)
# 2 - ask use for width (meter)
# 3 - calculate for area (sq meter)
# 4 - convert area into square feet
# 5 - convert area into square inches
# 6 - convert area into square centimeters
# 5 - output area in square meters, feet, inches and centimeters

# C - CODE

# Rewriting what I did earlier by using a constant (makes sense) and including
# the method round(2) as learned in the discussion.
# Also learned that constants used in methods throws a dynamic constant error

SQF = 10.7639
SQIN = 39.3701
SQCM = 100.00

puts "Let's calculate the area of the room: "
puts "Enter the length in meters: "
length = gets.chomp
puts "Enter the width in meters: "
width = gets.chomp
area_sqm = length.to_f * width.to_f
area_sqf = area_sqm * SQF
area_sqin = area_sqm * SQIN
area_sqcm = area_sqm * SQCM
puts "The area of the room is: "
puts "#{area_sqm.round(2)} sq meters"
puts "#{area_sqf.round(2)} sq feet"
puts "#{area_sqin.round(2)} sq inches"
puts "#{area_sqcm.round(2)} sq centimeters"
