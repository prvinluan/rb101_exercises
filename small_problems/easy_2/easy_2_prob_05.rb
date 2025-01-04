################################################################################
# P - PROBLEM

# Write a program that will ask for user's name. The program will then greet the 
# user. If the user writes "name!" then the computer yells back to the user.

# INPUT - string, user name
# OUTPUT - string, message with user name

# 1 - program accepts any char within input

# E - EXAMPLE

# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - ask for user name as input
# 2 - if input contains "!" output string message with user name in all caps
# 3 - if input doesnt contain "!" output a greeting with user name

# C - CODE

def name?
  puts "What is your name?"
  name = gets.chomp
end

def greeting
  user_name = name?
  if user_name.end_with?("!") == true
    puts "Hello #{user_name.delete_suffix("!")}. Why are we screaming?".upcase
  else
    puts "Hello #{user_name.capitalize}."
  end
end

greeting
