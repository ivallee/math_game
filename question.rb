class Question
  attr_reader :num1, :num2

  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @answer = nil
  end

  def add_nums
    puts "What does #{@num1} plus #{@num2} equal?"
    print "> "
    @answer = @num1 + @num2
    player_answer = $stdin.gets.chomp.to_i
    if player_answer == @answer
      puts "CORRECT! The answer is #{@answer}"
      true
    else
      puts "WRONG! The answer is #{@answer}"
      false
    end
  end

end