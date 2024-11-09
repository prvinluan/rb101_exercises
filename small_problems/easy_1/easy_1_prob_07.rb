# P - PROBLEM
# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# P - PROBLEM

# Create a simple mad-lib program that prompts for a noun, a verb, an adjective, and an adverb and injects those into a story that you create.
# 1 - INPUT: 4 different strings (noun, verb, adjective, adverb)
# 2 - OUTPUT: string
# 3 - program inserts each string into a fixed position in the final string

# E - EXAMPLE

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - ask user for a noun
# 2 - ask user for a verb
# 3 - ask user for an adjective
# 4 - ask user for an adverb
# 5 - print a phrase containing all user inputs together

# C - CODE

def madlibs
  puts "Type in any noun:"
  noun = gets.chomp.downcase
  puts "Type in any verb:"
  verb = gets.chomp.downcase
  puts "Type in any adjective:"
  adj = gets.chomp.downcase
  puts "Type in any adverb:"
  adv = gets.chomp.downcase

  puts "Do you #{verb} your #{adj} #{noun} #{adv}? That's hilarious!"
end

madlibs
