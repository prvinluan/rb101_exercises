# The code below contains a method number? to validate if an input is either an
# integer or a float. The valid_number? method was removed to make way for
# number?

################################################################################

# The line of hashes is made up of 80 chars, the max line accdg to rubocop

def prompt(message)
  Kernel.puts("=> #{message}")
end

def number?(num) # validates if input is a valid integer or float
  num.to_i.to_s == num || num.to_f.to_s == num
end

def operation_to_message(operation)
  case operation
  when "1"
    "Adding"
  when "2"
    "Substracting"
  when "3"
    "Multiplying"
  when "4"
    "Dividing"
  end
end

prompt("Welcome to Calculator! Type your name:")

name = ""
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Make sure to type a valid name")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ""
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      Kernel.puts("That's not a valid number! Try again")
    end
  end

  number2 = ""
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      Kernel.puts("That's not a valid number! Try again")
    end
  end

  # heredoc allows us to have multi-line strings
  operator_prompt = <<-MSG
  What operation to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG
  prompt(operator_prompt)
  operator = ""
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers... ")
  result = case operator
           when "1"
             number1.to_i() + number2.to_i()
           when "2"
             number1.to_i() - number2.to_i()
           when "3"
             number1.to_i() * number2.to_i()
           when "4"
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")
  prompt("Do you want to do another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?("y")
end
prompt("Thanks for using the calculator - bye!")
