################################################################################
# P - PROBLEM

# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a
# character.

# 1 - INPUT: string
# 2 - OUTPUT: integer as string message

# 3 - can be single or more words
# 4 - space does not count as char

# E - EXAMPLE
# input:
# Please write word or multiple words: walk
# output:
# There are 4 characters in "walk".

# input:
# Please write word or multiple words: walk, don't run
# output:
# There are 13 characters in "walk, don't run".

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - ask user input for word/s
# 2 - count number of chars in word/s
# 3 - print number of chars found in word/s in a message

# C - CODE

puts "Please write word or multiple words: "
str = gets.chomp

chars = str.delete(" ").length

puts "There are #{chars} characters in \"#{str}\"."
