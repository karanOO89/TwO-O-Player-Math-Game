
class Game 

  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
  end
  def start
    if(@player1.current_lives <=3 && @player1.current_lives>0 && @player2.current_lives>0 && @player2.current_lives <=3)
        question1 = Question.new(@player1)
        question1.ask_question
        puts "#{@player1.name} : #{@player1.current_lives}/3 vs #{@player2.name} : #{@player2.current_lives}/3"
        puts "-----NEW TURN-----"
        question2 = Question.new(@player2)
        question2.ask_question
        puts "#{@player1.name} : #{@player1.current_lives}/3 vs #{@player2.name} : #{@player2.current_lives}/3"
        puts "-----NEW TURN-----"
        start
    else
        puts "-----some time later-----"
        if (@player1.current_lives > @player2.current_lives)
            puts "#{@player1.name} won by #{@player1.current_lives}/3 to #{@player2.name}: #{@player2.current_lives}/3"
            puts "-----GAME OVER-----"
        elsif (@player1.current_lives == @player2.current_lives)
            puts "#{@player1.name} :#{@player1.current_lives}/3 , #{@player2.name}:#{@player2.current_lives}/3"
            puts "both are losers"
            puts "-----GAME OVER-----"
        else 
            puts "#{@player2.name} won by #{@player2.current_lives}/3 to #{@player1.name}: #{@player1.current_lives}/3"
            puts "-----GAME OVER-----"
        end
    end

  end    
end