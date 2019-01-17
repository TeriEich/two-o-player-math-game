class Question

  def self.generate_new_question
    num_1 = rand(1...100)
    num_2 = rand(1...100)
    operator = rand(1...4)

    if operator == 1
      @gen_answer = num_1 + num_2
      @gen_question = "#{num_1} + #{num_2}"
      return @gen_question, @gen_answer
    elsif operator == 2
      @gen_answer = num_1 - num_2
      @gen_question = "#{num_1} - #{num_2}"
      return @gen_question, @gen_answer
    elsif operator == 3
      @gen_answer = num_1 * num_2
      @gen_question = "#{num_1} * #{num_2}"
      return @gen_question, @gen_answer
    elsif operator == 4
      @gen_answer = num_1 / num_2
      @gen_question = "#{num_1} / #{num_2}"
      return @gen_question, @gen_answer
    end
  end

  def self.post_question(playerName)
    self.generate_new_question
    puts @gen_question
    puts "#{playerName}, what is your answer:"
    player_answer = gets.chomp

    if player_answer == @gen_answer.to_s
      true
    else
      false
    end

  end


end