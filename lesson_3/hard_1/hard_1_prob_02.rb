################################################################################
# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting # => "hi there"
puts greetings # => {a: "hi there"}

# We assign a local variable informal_greeting to key greetings[:a].
# informal_greeting is concatenated with the string " there". When we invoke the
# puts method and pass informal_greeting it outputs the string "hi there".
# When we invoke the puts method and pass greetings as an argument, it outputs
# the mutated hash {a: "hi there"}.
