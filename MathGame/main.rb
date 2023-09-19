#Begin game
# This is the main entrypoint into the program
require 'pp'
require './Classes/Game'
require './Classes/Player'
require './Classes/Question'

# puts @current_player
# puts @game_on

player1 = Player.new("Player1")
player2 = Player.new("Player2")

game = Game.new(player1, player2)

while player1.player_score > 0 && player2.player_score > 0
  
  random_numbers = Question.random_number_gen

  puts "#{game.current_player.name}: What does #{random_numbers[0]} plus #{random_numbers[1]} equal?"

  answer=gets.chomp.to_i


  if answer == Question.check_answer(random_numbers)
    game.correct_answer
  else
    game.incorrect_answer
  end

  game.show_score
  if(player1.player_score != 0 && player2.player_score != 0)
  puts "----- NEW TURN -----"
  end
end

if (player1.player_score != 0)
  puts "#{player1.name} wins with a score of #{player1.player_score}/3"
end

puts "#{player2.name} wins with a score of #{player2.player_score}/3"

game.game_over
