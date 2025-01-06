# Take a look at the following code:
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# => Alice
# => Bob

# What does this print out? Can you explain these results?
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# => BOB
# => BOB

__END__

- On line 11, the variable name is assigned the string object with value 'Bob'
- On line 12, save_name is assigned the string object name references
- The non-mutating #upcase is called on the object referenced by name
- The ! suffix follows the #upcase method, mutating the name variable
- The #puts is called and pass the name and save_name
- This method outputs "BOB", "BOB" on separate lines

Since save_name is assigned to name, it both points to the same object "Bob"
When we perform a destructive method on either of the two, it mutates the
caller. Ruby is using pass by reference in this instance - a copy of the
reference is being passed around. Any operations in the method, change the
value of its arguments/caller and ultimately mutates the original object.
