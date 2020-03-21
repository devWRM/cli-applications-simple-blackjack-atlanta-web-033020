require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end






def deal_card
  # code #deal_card here
  # Math.floor(Math.random(1) * 12)
  # puts rand * 12
  
  card = (rand*11 + 1).to_i
  card
 

 
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
  
# hit_or_stay = prompt_user.gets
# hit_or_stay = "Type 'h' to hit or 's' to stay".gets
# hit_or_stay
  
  gets("Type 'h' to hit or 's' to stay")
  
end






def end_game(card_total)
  # code #end_game here
  
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end






def initial_round
  # code #initial_round here
  
  first_card = deal_card
  second_card = deal_card
  
  sum = first_card + second_card
  puts "Your cards add up to #{sum}"
  sum
end






def hit?(current_card_total)
  # code hit? here
  
  prompt_user
  user_input = get_user_input
  
  if user_input == "s"
    # prompt_user
    return current_card_total
  elsif user_input == "h"
    dealt = deal_card
  else
    puts "Please enter a valid command"
    prompt_user
    user_input = get_user_input
  end
  
  current_card_total += dealt.to_i
  current_card_total
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
# initial_round
card_update = initial_round

until card_update > 21

card_update = hit?(card_update)

# binding.pry

display_card_total(card_update)
end


end_game(card_update)

  

end
    
