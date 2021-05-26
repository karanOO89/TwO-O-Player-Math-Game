class Question
  attr_reader :num1,:num2,:player
  def initialize(player)
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @player=player
    @answer = ""
  end
  def ask_question
    puts "#{player.name} : what would be the result if we add #{@num1} & #{@num2}"
    @answer = gets.chomp.to_i 
    if (@answer == (num1+num2))
        puts "correct answer!"
    else
        puts "wrong answer!" 
        @player.decrement_lives        
    end      
  end
end