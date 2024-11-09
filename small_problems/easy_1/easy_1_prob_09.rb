# P - PROBLEM
# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# P - PROBLEM

# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument.
# If the argument has an odd length, you should return exactly one character. If the argument has an even length,
# you should return exactly two characters.

# 1 - INPUT: string
# 2 - OUTPUT: string
# 3 - argument is a non-empty string
# 4 - method retusn the middle char/s of the argument
# 5 - method returns one char if length is odd
# 6 - method returns two chars if length is even

# E - EXAMPLE

# center_of('I love Ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - take string argument
# 2 - determine if string is empty
# 3 - determine length of string
# 4 - if length is odd return the middle char
# 5 - if length is even return the middle chars

# C - CODE

def center_of(string)
  length = string.size
  if lenth.odd? # length % 2 == 1
    string[length / 2]
  else
    string[(length / 2 - 1)..(length / 2)]
  end
end

p center_of('I love Ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
