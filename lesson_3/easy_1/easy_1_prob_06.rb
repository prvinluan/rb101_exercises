################################################################################
# PROBLEM:
# Starting with the string:
#
famous_words = "seven years ago..."
#
# show two different ways to put the expected "Four score and " in front of it.
#
# SOLUTION:
#
famous_words.prepend("Four score and ")
# => "Four score and seven years ago..."
#
# The other option is to use the #insert, where you pass two parameters -
# desired offset and string to be added to self
#
# famous_words.insert(0, "Four score and ")
