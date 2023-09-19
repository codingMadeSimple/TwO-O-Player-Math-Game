require_relative "Question"
require_relative "Player"

class Game
  #Will keep track of lives of the users and the output the changing of turns
  #Will output the final score and Game Over messages
  #State --> current_player
  #Methods --> change_player, check_lives
  
  def initialize
    #Data --> Needs an initial player to initialize
    @player_one = Player.players[0]
    @player_two = Player.players[1]
    @current_player = @player_one
    @game_on = true
  end

  def self.switch_player(current_player)
    if current_player == @player_one
      current_player = @player_two
    elsif
      current_player = @player_one
    end
  end

  def self.correct_answer 
    puts "#{@current_player}: YES! You are correct."
    switch_player(@current_player)
  end

  def self.incorrect_answer
    # @current_player.Player.subtract_lives
    puts "#{@current_player}: Seriously? No!"
    switch_player(@current_player)
  end

  def show_score 

  end

  def self.game_running(game_on)
    @game_on
  end

  def game_over
      puts "----- GAME OVER -----"
  end
end
  


# puts @current_player
puts @game_on

while @game_on == true

puts Question.ask_question(Question.random_number_gen)
answer=gets.chomp
answer == Question.check_answer(answer) ? Game.correct_answer : Game.incorrect_answer

end

puts Game.game_running(@game_on)