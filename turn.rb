require './game'
require './question'


class Turn

  @current_player = :player_1

  def self.take_turn(turnNum, currentPlayer)
    puts "*******************************"
    puts "----------- TURN #{turnNum} -----------"
    puts "*******************************"
    player_result = Question.post_question(currentPlayer.name)
    if player_result == true
      puts "Correct!"
    else
      puts "Wrong!"
      currentPlayer.lose_a_life
    end

    Game.score

  end

end