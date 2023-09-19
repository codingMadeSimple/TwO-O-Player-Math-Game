
class Player
  #Will keep all information regarding player includeing lives, and user input
  #State --> Lives
  @@players= []

  def initialize(name)
    @name = name
    @lives = 3
    @@players.push(@name)
  end
  #Methods --> subtract-lives
  def subtract_lives 
    @lives -= 1
  end
  
  def win_or_lose(win)
    if(win) 
      subtract_lives
    end
    puts "#{@name} has #{@lives}/3 lives"
  end

  def self.all_players
    @@players
  end

  def player_score
    puts @lives
  end

  def players
    @@players
  end

end

player1 = Player.new("Player1")
player2 = Player.new("Player2")

# puts Player.all_players
# player1.win_or_lose(true)

