################################################################################
# How could the following method be simplified without changing its return
# value?

# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end

# Logical operators return boolean values, based on this we can simply use the
# given expression as follows:

def color_valid(color)
  color == "blue" || color == "green"
end

puts color_valid("blue")
puts color_valid("green")
puts color_valid("red")
