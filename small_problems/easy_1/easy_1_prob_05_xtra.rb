# P - PROBLEM
# E - EXAMPLE
# D - DATA STRUCTURE
# A - ALGORITHM
# C - CODE

# P - PROBLEM

# Write a method that will take a short line of text, and print it within a box.

# For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.

# 1 - INPUT: string
# 2 - OUTPUT: string within a string
# 3 - print a string within a box
# 4 - if string is too long, print in multiple lines
# 5 - standard terminal window is 80 columns

# E - EXAMPLE

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - takes a string
# 2 - is string longer that width?
# 3 - if yes, print string in as much lines that would accomodate it within the box
# 4 - if no, print string in box

def print_in_box(string = '')
  
  length = string.length
  size = length > 78 ? 78 : length
  
  edge = "+#{"-" * (size + 2)}+"
  space = "|#{" " * (size + 2)}|"

  puts edge
  puts space
  message(string)
  puts space
  puts edge

end

def message(string)

  if string.length > 78

    start = 0
    char_length = 78
    arr = []

    until string.length == 0
      arr.push(string.slice!(start, char_length))
    end

    arr.each do |line|
      if line.length == 78
        puts "| #{line} |"
      else
        puts "| #{line + (" " * (78 - line.length))} |"
      end
    end

  else
    puts "| #{string} |"
  end

end


print_in_box('')
print_in_box('To boldly go where no one has gone before.')
print_in_box('Another sample string')
print_in_box()
print_in_box("This is too l#{'o' * 100}ng!")
print_in_box("This is too l#{'o' * 500}ng!")
print_in_box("Lorem ipsum odor amet, consectetuer adipiscing elit. Nec duis morbi dictum turpis nisi turpis accumsan porta ante. Aliquam auctor tincidunt ad ante; netus odio fames eu. Arcu nascetur inceptos ligula nibh sem? Congue himenaeos dis consequat lacinia curabitur libero vivamus. Cursus vel urna sollicitudin est at curabitur. Orci himenaeos nascetur sit massa enim turpis dignissim leo porta.")



