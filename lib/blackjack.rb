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
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = 0
  2.times { card_total += deal_card }
  display_card_total(card_total)  
  card_total
end

def hit?(initial_round)
  # code hit? here
  card_grand_total = 0
  prompt_user
  user_input = get_user_input
  
  if user_input == "h"
     new_card = deal_card
     card_grand_total = initial_round + new_card
     
  elsif user_input == "s"
     card_grand_total = initial_round
  end
  
  card_grand_total
  
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
end
    
