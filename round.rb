class Round

  attr_reader :question

  def initialize(question)
    @question = question
  end

  def ask_question
    puts "--- Asking question ---"
          if @question.add_nums == true
            p1.add_score
          else
            p1.lose_life
          end
  end


end

