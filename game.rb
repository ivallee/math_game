require './player'
require './question'
require './round'

class Game

  attr_reader :players
  
  def initialize
    @rounds = 0
    @players = [
      Player.new("Player 1"),
      Player.new("Player 2")
    ]
    @current_player = 0
  end

  def new_turn
    if @current_player == 1
      @current_player = 0
    else
      @current_player = 1
    end
      
  end

  def read_scores
    msg = ''
    @players.each do |player|
      msg.concat("#{player.name}: #{player.lives} lives. ")
    end
    puts msg
  end

  def play
    while @players[0].lives > 0 && @players[1].lives > 0
      puts "--- Asking question ---"
      newQuestion = Question.new
      if newQuestion.add_nums == true
        @players[@current_player].add_score
      else
        @players[@current_player].lose_life
      end
      new_turn
      read_scores
    end
    
    puts "#{@players[@current_player].name} wins!"
  end

end

game1 = Game.new
game1.play



