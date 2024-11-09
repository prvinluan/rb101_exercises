# P - PROBLEM
# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# P - PROBLEM

# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary.
# If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

# 1 - INPUT: two arguments, positive integer and boolean
# 2 - OUTPUT: integer, 0 if false and salary/2 if true
# 3 - calculate bonus based on boolean value
# 4 - bonus is half the amount of the salary(positive integer)

# E - EXAMPLES

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# The tests above should print true.

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - accept two arguments, positive integer and boolean
# 2 - if boolean is false, bonus is 0
# 3 - if boolean is true, calculate bonus
# 4 - bonus is half the amount of the salary

# C - CODE

def calculate_bonus(salary, bool)
  # bonus = nil
  # if bool == true
  #   bonus = salary/2
  # else
  #   bonus = 0
  # end
  bonus = bool == true ? salary/2 : 0
  # bonus
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
