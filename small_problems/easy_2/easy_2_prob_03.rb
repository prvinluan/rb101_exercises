################################################################################
# P - PROBLEM

# Create a simple tip calculator. The program should prompt for a bill amount
# and a tip rate. The program must compute the tip and then display both the
# tip and the total amount of the bill.

# 1 - INPUT: bill amount and tip rate
# 2 - OUTPUT: tip and total bill amout
# 3 - bill amount can be a float
# 4 - tip rate must be converted into a decimal number
# 5 - tip rate * 0.01

# E - EXAMPLE

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# D - DATA STRUCTURE

# A - ALGORITHM

# 1 - ask for bill amount
# 2 - validate bill amount input
# 3 - ask again for bill amount if not valid
# 4 - ask for tip rate
# 5 - validate tip rate input
# 6 - ask again for tip rate if not valid
# 7 - covert tip rate into decimal number
# 8 - calculate amount of tip
# 9 - calculate total amount of bill with tip inlcuded
# 10 - display tip and total in a message

# C - CODE

def prompt(message)
  puts "=> #{message}"
end

percent = 0.01

bill_amount = nil
loop do
  prompt("What is the bill?")
  prompt("If bill ends in 0, remove 0")
  prompt("Example - $125.50, enter 125.5 instead")
  bill_amount = gets.chomp
  if bill_amount.to_f.to_s == bill_amount ||
     bill_amount.to_i.to_s == bill_amount
    bill_amount = bill_amount.to_f
    break bill_amount
  else
    prompt("Invalid input - try again!")
  end
end

tip_rate = nil
loop do
  prompt("What is the tip percentage?")
  prompt("Example: 18 for 18%")
  tip_rate = gets.chomp
  if tip_rate.to_i > 0 && tip_rate.to_i.to_s == tip_rate
    tip_rate = tip_rate.to_i
    break tip_rate
  else
    if tip_rate.to_i < 0
      prompt("Enter a number larger than 0")
    end
    prompt("Invalid input - try again!")
  end
end

tip_rate *= percent

total_tip = (bill_amount * tip_rate).round(2)
total_bill = (bill_amount + total_tip).round(2)

prompt("The tip is $#{format('%.2f', total_tip)}")
prompt("The total bill is $#{format('%.2f', total_bill)}")
