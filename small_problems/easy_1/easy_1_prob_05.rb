# P - PROBLEM
# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# P - PROBLEM

# Write a method that will take a short line of text, and print it within a box.

# 1 - INPUT: takes a string argument
# 2 - OUTPUT: string
# 3 - size of box accomodates the length of string
# 4 - empty string or no argument, prints empty box

# E - EXAMPLE

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# You may assume that the input will always fit in your terminal window.

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - accept string argument
# 2 - count how many chars in a string
# 3 - output string within a box

# C - CODE

def print_in_box(string = '')
  
  size = (string == '') ? 2 : string.length + 2
  edge = "-" * (size)
  space = " " * (size)
  message = " " + string + " "

  puts "+#{edge}+"
  puts "|#{space}|"
  puts "|#{message}|"
  puts "|#{space}|"
  puts "+#{edge}+"

end

print_in_box('')
print_in_box('To boldly go where no one has gone before.')
print_in_box('Another sample string')
print_in_box()

# Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window 
# (80 columns, including the sides of the box).

# def print_in_box(string = '')
  
#   string = string.length > 78 ? string.slice(0, 78) : string
#   size = (string == '') ? 2 : string.length + 2
#   edge = "+#{"-" * (size)}+"
#   space = "|#{" " * (size)}|"
#   message = "| #{string} |"

#   puts edge
#   puts space
#   puts message
#   puts space
#   puts edge

# end

# print_in_box('Heres a shorter string')
# print_in_box()
# print_in_box("This is too l#{'o' * 100}ng")

# For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.
