# frozen_string_literal: true

# Question class
class Question
  @@id = 0

  attr_accessor :id, :operand_one, :operand_two, :answer, :what

  def initialize
    @@id += 1

    self.id = @@id
    self.operand_one = rand 1..20
    self.operand_two = rand 1..20
    self.answer = operand_one + operand_two
    self.what = "What does #{operand_one} + #{operand_two} equal?"
  end

  def try(attempt)
    attempt.to_i == answer
  end

  def to_s
    "Question {id: #{id}, operand_one: #{operand_one}, operand_two: #{operand_two}, answer: #{answer}, what: '#{what}'}"
  end
end
