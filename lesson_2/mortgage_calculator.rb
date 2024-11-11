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

percent = 0.01
months = 12

prompt("WELCOME TO THE MORTGAGE CALCULATOR")
prompt("**********************************")

loop do
  loan_amount = nil
  loop do
    prompt("Enter loan amount: ")
    loan_amount = Kernel.gets().chomp()
    if loan_amount.to_i.to_s == loan_amount
      loan_amount = loan_amount.to_f
      break loan_amount
    else
      prompt("Invalid input - try again!")
    end
  end

  apr = nil
  loop do
    prompt("Enter APR: ")
    apr = Kernel.gets().chomp()
    if apr.to_i.to_s == apr
      apr = apr.to_i
      break apr
    else
      prompt("Invalid input - try again!")
    end
  end

  loan_duration = nil
  loop do
    prompt("Enter loan duration: ")
    loan_duration = Kernel.gets().chomp()
    if loan_duration.to_i.to_s == loan_duration
      loan_duration = loan_duration.to_i
      break loan_duration
    else
      prompt("Invalid input - try again!")
    end
  end

  loan_duration_months = loan_duration * months
  monthly_interest = (apr * percent) / months

  monthly_payment = loan_amount *
                    (monthly_interest /
                    (1 - (1 + monthly_interest)**(-loan_duration_months)))

  prompt("LOAN AMOUNT: #{loan_amount}")
  prompt("APR: #{apr} %")
  prompt("LOAN DURATION: #{loan_duration} years")
  prompt("MONTHLY PAYMENT: $#{monthly_payment.round(2)}")

  print("Would you like to calculate another one? Type 'y': ")
  continue = gets.chomp.downcase
  break if continue != 'y'
end

print("********")
print("GOODBYE!")
