
class Game
  #Will keep track of lives of the users and the output the changing of turns
  #Will output the final score and Game Over messages
  #State --> current_player
  #Methods --> change_player, check_lives
  
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @current_player = @player_one
    @game_on = true
  end

  def switch_player
    if @current_player == @player_one
      @current_player = @player_two
    elsif
      @current_player = @player_one
    end
  end

  def correct_answer 
    puts "#{@current_player.name}: YES! You are correct."
    switch_player
  end

  def incorrect_answer
    @current_player.subtract_lives
    puts "#{@current_player.name}: Seriously? No!"
    switch_player
  end

  def show_score 
    puts "#{@player_one.name}: #{@player_one.player_score}/3 vs #{@player_two.name}: #{@player_two.player_score}/3"
  end

  def game_running(game_on)
    @game_on
  end

  def current_player
    @current_player
  end

  def game_over
      puts "----- GAME OVER -----"
      puts "Good bye!"
  end
end
  
