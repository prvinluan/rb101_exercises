# P - PROBLEM
# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# P - PROBLEM

# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. 
# The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, 
# and the other end at the upper-right.

# 1 - INPUT: positive integer
# 2 - OUTPUT: string
# 3 - n = number of columns and number of lines.
# 4 - method prints out *'s in the shape of a right triangle
# 5 - *'s replaces " " incrementally from the right (hypotenuse from bottom left to upper right)

# E - EXAMPLE

# triangle(5)
#     *
#    **
#   ***
#  ****
# *****

# triangle(9)
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - takes positive integer n
# 2 - decrement number of spaces and increment number of "*"s by 1
# 3 - print spaces and "*"
# 4 - repeat 2-3 until n becomes 0

# C - CODE

def triangle(n)
  stars = 1
  spaces = n - 1

  loop do
    puts " " * spaces + "*" * stars
    spaces -= 1
    stars += 1
    break if stars > n
  end

end

triangle(5)
triangle(9)

# decreasing, top L - bot R hypotenuse

def triangle_b(n)
  stars = n
  spaces = 0

  loop do
    puts " " * spaces + "*" * stars
    spaces += 1
    stars -= 1
    break if stars == 0
  end

end

triangle_b(5)
triangle_b(9)

# increasing, top L - bot R hypotenuse

def triangle_c(n)
  stars = 1

  until stars >  n
    puts "*" * stars
    stars += 1
  end
end

triangle_c(5)
triangle_c(9)

# decreasing, top R - bot L hypotenuse

def triangle_d(n)
  stars = n

  while stars > 0
    puts "*" * stars
    stars -= 1
  end
end

triangle_d(5)
triangle_d(9)



