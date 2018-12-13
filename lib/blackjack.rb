def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  string = gets.chomp
  
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  
  dealt_card1 = deal_card
  dealt_card2 = deal_card
  sum = dealt_card1 + dealt_card2
  
  display_card_total(sum)
  return sum
  
end

def hit?(current_card_total)
  # code hit? here
  prompt_user
  
  answer = get_user_input
  if answer == "s"
      current_card_total
    elsif answer == "h"
      current_card_total += deal_card
    else
      invalid_command
      prompt_user
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  
  end_game(card_total)
end
    
