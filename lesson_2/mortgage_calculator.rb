################################################################################
# P - PROBLEM

# Take everything that you've learned so far and build a mortgage calculator
# (or car payment calculator -- it's the same thing) that determines the monthly
# payment assuming that interest is compounded monthly.

# You'll need three pieces of information:

# - the loan amount
# - the Annual Percentage Rate (APR)
# - the loan duration

# From the above, you'll need to calculate the following two things:

# - monthly interest rate (APR / 12)
# - loan duration in months

# You can use the following formula:
# m = p * (j / (1 - (1 + j)**(-n)))

# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

# 1 - INPUT:
#     - loan amount
#     - APR
#     - loan duration
# 2 - OUTPUT: monthly payment
# 3 - calculate based on input:
#     - monthly interest rate
#     - loan duration (months)

# E - EXAMPLE
# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - enter loan amount
# 2 - enter APR
# 3 - enter loan duration
# 4 - calculate monthly interest rate (APR/12)
# 5 - convert loan duration into months
# 6 - calculate the monthly mortgage

# C - CODE

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(input)
  input.to_i.to_s == input
end

# def float?(input)
#   input.to_f.to_s == input
# end

# Regex
def float?(input)
  /\d/.match(input) && /^-?\d*\.?\d*$/.match(input)
end

percent = 0.01
months = 12

prompt("WELCOME TO THE MORTGAGE CALCULATOR")
prompt("**********************************")

loop do
  loan_amount = nil
  loop do
    prompt("Enter loan amount: ")
    loan_amount = Kernel.gets().chomp()
    if integer?(loan_amount) || float?(loan_amount)
      loan_amount = loan_amount.to_f
      break loan_amount
    else
      prompt("Invalid input - try again!")
    end
  end

  apr = nil
  loop do
    prompt("Enter APR: ")
    prompt("Only enter numbers like 6 for 6%")
    apr = Kernel.gets().chomp()
    if integer?(apr)
      apr = apr.to_i
      break apr
    else
      prompt("Invalid input - try again!")
    end
  end

  loan_duration = nil
  loop do
    prompt("Enter loan duration in years: ")
    loan_duration = Kernel.gets().chomp()
    if integer?(loan_duration)
      loan_duration = loan_duration.to_i
      break loan_duration
    else
      prompt("Invalid input - try again!")
    end
  end

  loan_duration_months = loan_duration * months
  monthly_interest = (apr * percent) / months
  # APR for monthly payment formula broken down to 3 parts
  compound_interest = (1 + monthly_interest)**(-loan_duration_months)
  interest = monthly_interest / (1 - compound_interest)
  monthly_payment = loan_amount * interest

  prompt("LOAN AMOUNT: $#{loan_amount}")
  prompt("APR: #{apr} %")
  prompt("LOAN DURATION: #{loan_duration} years")
  prompt("MONTHLY PAYMENT: $#{monthly_payment.round(2)}")

  prompt("Would you like to calculate another one? Type 'y': ")
  continue = gets.chomp.downcase
  break if continue != 'y'
end

prompt("********")
prompt("GOODBYE!")
