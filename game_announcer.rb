# frozen_string_literal: true

require_relative 'constants'

# GameAnnouncer class
class GameAnnouncer
  def self.announce_score(players)
    players.each do |player|
      puts "#{player.username}: #{player.life.lives}/#{Constants::STARTING_LIVES} #{'<OUT>' if player.out?}"
    end

    puts "\n"
  end

  def self.announce_winner(players)
    winner = players.reject(&:out?)

    print "#{winner[0].username} beat #{players.length - 1} other #{players.length > 2 ? 'players' : 'player'}"
    puts " with #{winner[0].life.lives}/#{Constants::STARTING_LIVES} lives remaining!\n\n"
  end

  def self.announce_tie
    puts "Tie game!\n\n"
  end

  def self.announce_game_over
    puts '[GAME OVER]'
    puts 'Goodbye!'
  end
end
