# frozen_string_literal: true

require_relative 'question'
require_relative 'turn'

# Game class
class Game
  @@id = 0

  attr_accessor :id, :players

  def initialize(players)
    @@id += 1

    self.id = @@id
    self.players = players
  end

  def one_remaining?
    not_out_count = 0

    players.each do |player|
      not_out_count += 1 unless player.out?
    end

    not_out_count == 1
  end

  def tie?
    out_count = 0

    players.each do |player|
      out_count += 1 if player.out?
    end

    out_count == players.length
  end

  def start
    while !one_remaining? && !tie?
      turn = Turn.new(players)
      turn.ask
      GameAnnouncer.announce_score(players)
    end

    one_remaining? ? GameAnnouncer.announce_winner(players) : GameAnnouncer.announce_tie

    GameAnnouncer.announce_game_over
  end
end
