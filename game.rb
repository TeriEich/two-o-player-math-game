require './player'
require './turn'


class Game

  @@total_lives = 3
  @@turn = 1
  @@player_1 = Player.new("Player 1", @@total_lives)
  @@player_2 = Player.new("Player 2", @@total_lives)
  @@current_player = @@player_1


  def self.score
    puts "-------- Current Score --------"
    puts "#{@@player_1.name} -> #{@@player_1.lives} / #{@@total_lives}"
    puts "#{@@player_2.name} -> #{@@player_2.lives} / #{@@total_lives}"

    if @@player_1.lives > @@player_2.lives
      puts "** #{@@player_1.name} is in the lead! **"
    elsif @@player_1.lives < @@player_2.lives
      puts "** #{@@player_2.name} is in the lead! **"
    else
      puts "** #{@@player_1.name} and #{@@player_2.name} are tied! **"
    end
  end

  def run_game
    until @@player_1.lives == 0 || @@player_2.lives == 0
      Turn.take_turn(@@turn, @@current_player)
      @@turn += 1
      unless @@current_player == @@player_1
        @@current_player = @@player_1
      else
        @@current_player = @@player_2
      end
    end
    puts "GAME OVER!"
    if @@player_1.lives == 0
      puts "*** #{@@player_2.name} wins! ***"
    else
      puts "*** #{@@player_1.name} wins! ***"
    end
    exit(0)
  end

  # @@player_1.lose_a_life


end