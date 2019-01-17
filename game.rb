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

  p @@player_1
  p @@player_2
  puts "#{@@player_1.name} has #{@@player_1.lives} lives left"
  puts "#{@@player_2.name} has #{@@player_2.lives} lives left"
  @@player_1.lose_a_life
  puts "#{@@player_1.name} has #{@@player_1.lives} lives left"
  puts "#{@@player_1.name}"

end