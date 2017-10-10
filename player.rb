class Player
  
  attr_reader :name
  attr_accessor :lives, :score

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def add_score
    @score += 1
  end

  def lose_life
    @lives -= 1
  end

end

