# frozen_string_literal: true

require_relative 'question'
require_relative 'player'

# Turn class
class Turn
  @@id = 0

  attr_accessor :id, :players

  def initialize(players)
    @@id += 1

    self.id = @@id
    self.players = players
  end

  def ask
    puts "[TURN #{id}]"

    players.each do |player|
      next if player.out?

      question = Question.new

      puts "#{player.username}'s turn: #{question.what}"
      print '> '
      result = question.try(gets.chomp)

      puts "#{player.username}'s turn: #{result ? 'CORRECT' : 'INCORRECT'}\n\n"

      player.incorrect unless result
    end
  end

  def to_s
    "Turn { id: #{id}, players: #{players} }"
  end
end
