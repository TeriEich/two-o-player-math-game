require './player'


class Game

  @@total_lives = 3
  @@player_1 = Player.new("Player 1", @@total_lives)
  @@player_2 = Player.new("Player 2", @@total_lives)
  attr_accessor :player_1
  attr_accessor :player_2

  def initialize
    # @player_1
    # @player_2
  end


  def self.score
    puts "--------Current Score--------"
    puts "#{@@player_1.name} -> #{@@player_1.lives} / #{@@total_lives}"
    puts "#{@@player_2.name} -> #{@@player_2.lives} / #{@@total_lives}"

    if @@player_1.lives > @@player_2.lives
      puts "**#{@@player_1.name} is in the lead!**"
    elsif @@player_1.lives < @@player_2.lives
      puts "**#{@@player_2.name} is in the lead!**"
    else
      puts "**#{@@player_1.name} and #{@@player_2.name} are tied!**"
    end
  end


end