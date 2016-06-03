def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  rand(1..11)
end

def display_card_total (total=deal_card)
  puts "Your cards add up to #{total}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp# code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"# code #end_game here
end

def initial_round
    (deal_card)*2
    total = deal_card + deal_card
    display_card_total(total) 
    total
end

def hit?(card_total)
  prompt_user 
  user_input = get_user_input
    if user_input == "h"
    card_total += deal_card
    return card_total
      elsif user_input == "s"
      return card_total
        else
          invalid_command
          prompt_user
    end
end

def invalid_command
  puts "Please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
card_total = 0
welcome
card_total = initial_round
  until card_total > 21 
  card_total = hit?(card_total)
  display_card_total(card_total)
  end
end_game(card_total)
end
    
