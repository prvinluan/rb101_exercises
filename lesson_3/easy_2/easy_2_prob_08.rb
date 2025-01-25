################################################################################
# Shorten the following sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

# Review the String#slice! documentation, and use that method to make the return
# value "Few things in life are as important as ". But leave the advice variable
# as "house training your pet dinosaur.".

# As a bonus, what happens if you use the String#slice method instead?

# p advice.slice!("Few things in life are as important as ")

# Using String#slice will not change the value of advice variable, it remains 
# the same "Few things in life are as important as house training your pet 
# dinosaur."

# Instead of using the substring, we can use indexes of substring for the
# range:

p advice.slice!(0, advice.index("house"))
p advice
