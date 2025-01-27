################################################################################
# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

bar(foo)

# => "no"

# Even if we provide foo with an argument or not, the method foo will return
# the value "yes" regardless. "yes" is then passed to the method bar, where
# the ternary expression will return the value "no", since "yes" is not equal
# to the string value "no".
