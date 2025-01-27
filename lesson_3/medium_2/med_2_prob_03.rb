###############################################################################
# Let's call a method, pass two strings as arguments and see how they can be
# treated differently depending on the method invoked on them inside the method
# definition.

# Study the following code and state what will be displayed...and why:

def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
p tricky_method(string_arg_one, string_arg_two).object_id

puts "String_arg_one looks like this now: #{string_arg_one}"
# => "String_arg_one looks like this now: pumpkins"

puts "String_arg_two looks like this now: #{string_arg_two}"
# => "String_arg_two looks like this now: pumpkinsrutabaga"

# When we pass the two strings to the method as arguments, each of them
# gets passed using a different object passing strategy.

# The first argument gets passed using pass by value, where a copy of the
# original object gets passed in the method. This happens because we invoke
# on the assignment operator method which is non-mutating. The new string is
# reassigned to the copy and not the original object.

# The second argument uses pass by reference. The shovel operator is
# destructive and mutates the arguments/caller. Since both the argument and
# original object reference the same object, the orignal object is changed
# to "pumpkinsrutabaga"
