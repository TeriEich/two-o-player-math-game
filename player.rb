class Player

  attr_accessor :lives
  attr_reader :name

  def initialize(playerNumber, totalLives)
    @name = playerNumber
    @lives = totalLives
  end

  def lose_a_life
    @lives -= 1
  end


end