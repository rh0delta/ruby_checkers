require_relative 'game.rb'
require_relative 'grid.rb'
require_relative 'player.rb'

@grid = {}

game_board = Grid.new(@grid, 'g', 8)
player1 = Player.new('Nayyir')
player2 = Player.new('Frank')

game = Game.new(players: [player1, player2], board: game_board)
