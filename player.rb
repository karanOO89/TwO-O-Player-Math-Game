class Player
  attr_reader :current_lives, :name
  def initialize(name)
    @name = name
    @current_lives = 3
  end
  def decrement_lives
    @current_lives -= 1      
  end
end