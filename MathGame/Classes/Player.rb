
class Player
  #Will keep all information regarding player includeing lives, and user input
  #State --> Lives
  attr_accessor :name

  @@players= []

  def initialize(name)
    @name = name
    @lives = 3
    @@players.push(self)
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
    @lives
  end

end
