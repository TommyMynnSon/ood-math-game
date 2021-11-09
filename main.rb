# frozen_string_literal: true

require_relative 'game'
require_relative 'player'

player1 = Player.new('s1mple')
player2 = Player.new('Elon Musk')
player3 = Player.new('tmson')
player4 = Player.new('Matz')

players_for_game1 = [player1, player2, player3, player4]

game1 = Game.new(players_for_game1)

game1.start
