# frozen_string_literal: true

# Question class
class Question
  @@id = 0

  attr_accessor :id, :op_one, :op_two, :answer, :what

  def initialize
    @@id += 1

    self.id = @@id
    self.op_one = rand 1..20
    self.op_two = rand 1..20
    self.answer = op_one + op_two
    self.what = "What does #{op_one} + #{op_two} equal?"
  end

  def try(attempt)
    attempt.to_i == answer
  end

  def to_s
    "Question { id: #{id}, op_one: #{op_one}, op_two: #{op_two}, answer: #{answer}, what: '#{what}' }"
  end
end
