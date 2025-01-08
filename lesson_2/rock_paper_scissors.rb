VALID_CHOICES = ["rock", "paper", "scissors", "lizard", "Spock"]

def prompt(message)
  Kernel.puts("=> #{message}")
end

def get_char
  valid_chars = ["r", "p", "sc", "l", "sp"]
  char = ""
  loop do
    char = Kernel.gets().chomp()
    if valid_chars.include?(char)
      break
    else
      prompt("That's not a valid choice!")
    end
  end
  char
end

def choice(get_char)
  choices = {
    "r" => VALID_CHOICES[0],
    "p" => VALID_CHOICES[1],
    "sc" => VALID_CHOICES[2],
    "l" => VALID_CHOICES[3],
    "sp" => VALID_CHOICES[4]
  }
  choices[get_char]
end

def win?(first, second)
  win = {
    "rock" => ["scissors", "lizard"],
    "paper" => ["rock", "Spock"],
    "scissors" => ["paper", "lizard"],
    "lizard" => ["paper", "Spock"],
    "Spock" => ["rock", "scissors"]
  }
  win[first] && win[first].include?(second)
end

def grand_winner(user, computer)
  if user == 3
    "You are the grand winner!"
  elsif computer == 3
    "The computer is the grand winner!"
  end
end

def display_results(first, second)
  prompt("You chose: #{first}, Computer chose: #{second}")
  if win?(first, second)
    "You win!"
  elsif win?(second, first)
    "Computer wins!"
  else
    "It's a tie!"
  end
end

def display_score(user, computer)
  prompt("PLAYER SCORE: #{user} | COMPUTER SCORE: #{computer}")
end

# variables for score tab
user_score = 0
computer_score = 0

prompt("Let's play - #{VALID_CHOICES.join(', ')}!")

loop do
  prompt("Type 'r' for rock")
  prompt("Type 'p' for paper")
  prompt("Type 'sc' for scissors")
  prompt("Type 'l' for lizard")
  prompt("Type 'sp' for Spock")

  user_choice = choice(get_char)
  computer_choice = VALID_CHOICES.sample
  winner = display_results(user_choice, computer_choice)

  # score tab
  if winner == "You win!"
    user_score += 1
  elsif winner == "Computer wins!"
    computer_score += 1
  end

  display_score(user_score, computer_score)

  if grand_winner(user_score, computer_score)
    prompt(grand_winner(user_score, computer_score))
    break
  end
end

prompt("Thanks for playing - goodbye!")
