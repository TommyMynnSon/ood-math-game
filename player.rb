# frozen_string_literal: true

require_relative 'life'

# Player class
class Player
  @@id = 0

  attr_accessor :id, :username, :life

  def initialize(username)
    @@id += 1

    self.id = @@id
    self.username = username
    self.life = Life.new
  end

  def to_s
    "Player { id: #{id}, username: #{username}, life: #{life} }"
  end
end
