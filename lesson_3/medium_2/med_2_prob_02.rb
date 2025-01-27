################################################################################
# Let's take a look at another example with a small difference in the code:

a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# Even if we change the data type but still have the same value, doesn't mean
# a and b will point to the same object. a and b are still different objects
# that just happen to have the same value.

# Numbers are immutable - and there can only be one integer 42 at a given time.
# This results to all variables referencing the same object and have the same
# object id. Keep in mind that this is also true for true, false and nil -
# the other immutable objects.
