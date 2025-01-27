################################################################################
# Alyssa was asked to write an implementation of a rolling buffer. Elements are
# added to the rolling buffer and if the buffer becomes full, then new elements
# that are added will displace the oldest elements in the buffer.

# She wrote two implementations saying, "Take your pick. Do you like << or + for
# modifying the buffer?". Is there a difference between the two, other than what
# operator she chose to use to concatenate an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# array = [1, 2, 3]
# size = 3
# add_element = 4

# p rolling_buffer1(array, size, add_element)
# p array
# => [2, 3, 4]
# => [2, 3, 4]

# p rolling_buffer2(array, size, add_element)
# p array
# => [2, 3, 4]
# => [1, 2, 3]

# The two methods are very different from each other. Aside from varying
# operators, there also is assignment being done on line 8 in #rolling_buffer2.

# What this does, is assign the concatenated value of the original array and
# the additional element to a variable buffer. Any operations done on the
# variable buffer will not affect the original object.

# #rolling_buffer mutates the buffer, while #rolling_buffer2 keeps the buffer's
# original value.
