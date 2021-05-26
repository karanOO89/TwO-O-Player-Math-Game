require_relative 'game'
require_relative 'player'
require_relative 'question'


player1 = Player.new("karan")
player2 = Player.new("raven")

game = Game.new(player1,player2)
game.start
