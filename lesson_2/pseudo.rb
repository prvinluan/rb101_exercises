# For example, write out pseudo-code (both casual and formal) that does the following:
#
# 1) a method that returns the sum of two integers
# 2) a method that takes an array of strings, and returns a string that is all those strings concatenated together
# 3) a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element.
#
#	every_other([1,4,7,2,5]) # => [1,7,5]
#
# 4) a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 
#  'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.
# 5) a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the 
#   even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes.
#
#	merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]
#
#   You may assume that both array arguments have the same number of elements.

# -----

# PROBLEM 1: a method that returns the sum of two integers

# CASUAL:

# 1 - Given two integers
# 2 - Initialize a variable with the sum of integer one and integer two

# FORMAL:

# START

# Given two integers, integer 1 and integer 2

# SET sum = integer 1 + integer 2

# END

# ---

# PROBLEM 2: a method that takes an array of strings, and returns a string that is all those strings concatenated together

# CASUAL:

# 1 - Given an array of strings
# 2 - Initialize a variable with an empty string
# 3 - Iterate thru the array of strings
# 4 - At each iteration, an element is removed from the array  and is added to empty string
# 5 - The string now contains all the strings from the aray

# FORMAL:

# START

# Given an array of strings, "arr_of_strings"

# SET string_of_strings = ""

# WHILE array_of_strings is not empty
#   IF array_of_string contains an element, remove an element and add the removed element to string_of_strings
#   IF array is empty, return value of string_of_strings and exit the loop

# END

# PROBLEM 3: a method that takes an array of integers, and returns a new array with every other element from the original array, 
#            starting with the first element. 

#	     For instance:
#            every_other([1,4,7,2,5]) # => [1,7,5]

# CASUAL:

# 1 - Given an array of integers
# 2 - Initialize variable new_arr to an emtpy array
# 3 - Initialize variable counter to 0
# 4 - Iterate thru the given array
# 5 - Remove first element from array and assign removed value to variable element
# 6 - Add 1 to counter
# 7 - If counter is odd, add removed element to new_arr
# 8 - Repeat thru iteration until given array is empty
# 9 - Once given array is empty, return the value of new_arr

# FORMAL:

# START
# Given an array of integers, "arr"

# SET new_arr = []
# SET counter = 0

# WHILE arr contains elements, iterate thru the array

# SET element = value of removed first element of arr
# add 1 to counter

# IF counter is odd, add element to new_arr

# END

# PROBLEM 4: a method that determines the index of the 3rd occurrence of a given character in a string. 
# For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 
# (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.

# CASUAL:

# 1 - Given a string, and a char
# 2 - Count the number of times the given char occurs in the string
# 3 - If number of occurence is 3 or more see CASUAL 4B
# 4 - If number of occurence is less than 3, return nil

# CASUAL 4B:

# 1 - Turn string into individual characters and assign to a new array
# 2 - Initialize variable index to 1
# 3 - Initialize variable count to 0
# 4 - Iterate thru all the characters
# 5 - Determine if element is the same value as char
# 6 - If same value, add 1 to count and 1 to index
# 6b - Once count is equal to 3, return array[index - 1]
# 7 - If not, add 1 to index

# FORMAL:

# START
# Given a string and a char

# SET num = number of times char is in string
# IF number of occurence is three or more see FORMAL 4B
# ELSE return nil

# END

# FORMAL 4B:

# SET chars = string into individual characters
# SET index = 1
# SET count = 0

# Iterate thru chars, SET letter = each character
# Compare each element to char
# IF letter == char, add 1 to count and index
# return chars[index - 1]
# ELSE add 1 to index

# END

#def third(string, char)
#  num = string.count(char)
#  if num >= 3
#    letters = string.split("")
#    index = 0
#    count = 0
#    
#    letters.each do |letter|
#              if letter == char
#                count += 1
#                index += 1
#                return index - 1 if count == 3
#              else
#                index += 1
#              end
#            end
#  else
#    num = nil
#  end
#
#end
#
#
#p third("trick or treats", "t")
#p third("poopoo dog", "o")
#p third("lucky", "l")

# PROBLEM 5: a method that takes two arrays of numbers and returns the result of merging the arrays. 
# The elements of the first array should become the elements at the even indexes of the returned array, 
# while the elements of the second array should become the elements at the odd indexes. 
#
# For instance:
#
# merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]
#
# You may assume that both array arguments have the same number of elements.

# CASUAL:

# 1 - Given two different arrays, each containing the same amount of elements (numbers)
# 2 - Initialize a new empty array that will contain the result of merging the two arrays
# 3 - Remove the first element of array 1 and add to the new array
# 4 - Do the same for array 2
# 5 - Repeat step 3 and 4 until both arrays have been iterated thru
# 6 - Return the value of the new array, now containing the elements of both arrays in alternating pattern.

# FORMAL:

# START
# Given two different arrays, array1 and array2

# SET new_arr = []

# WHILE number of elements in both arrays is not 0
# remove first element of array1, add to new_arr
# do the same for array2

# Return the value of new_arr

# END

#def merge(arr1, arr2)
#  new_arr = []
#  counter = 0
#  
#  loop do
#    odd = arr1.shift
#    even = arr2.shift
#    new_arr.push(odd, even)
#    return new_arr if arr1.empty?
#  end
#
#  # new_arr
#
#end
#
#p merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]
