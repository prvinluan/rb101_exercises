################################################################################
# In other practice problems, we have looked at how the scope of variables
# affects the modification of one "layer" when they are passed to another.

# To drive home the salient aspects of variable scope and modification of one
# scope by another, consider the following similar sets of code.

# What will be printed by each of these code groups?

# A)

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# => "one is: one"
# => "two is: two"
# => "three is: three"

# Uses pass by value, assignment

# B)

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# => "one is: one"
# => "two is: two"
# => "three is: three"

# Uses pass by value

# C)

def mess_with_vars(one, two, three)
  one.gsub!("one", "two")
  two.gsub!("two", "three")
  three.gsub!("three", "one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# => "one is: two"
# => "two is: three"
# => "three is: one"

# Pass by reference, mutating #gsub!
