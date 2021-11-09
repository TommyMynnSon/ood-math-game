# frozen_string_literal: true

require_relative 'constants'

# Life class
class Life
  @@id = 0

  attr_accessor :id, :lives

  def initialize
    @@id += 1

    self.id = @@id
    self.lives = Constants::STARTING_LIVES
  end

  def decrease
    self.lives -= 1
  end

  def to_s
    "Life { id: #{id}, lives: #{lives} }"
  end
end
