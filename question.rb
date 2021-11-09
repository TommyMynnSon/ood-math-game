# frozen_string_literal: true

# Question class
class Question
  attr_reader :operand_one, :operand_two, :answer, :what, :id

  @@id = 0

  def initialize
    @@id += 1
    @id = @@id
    @operand_one = rand 1..20
    @operand_two = rand 1..20
    @answer = @operand_one + @operand_two
    @what = "What does #{@operand_one} + #{@operand_two} equal?"
  end

  def try(attempt)
    attempt.to_i == answer
  end

  def to_s
    "Question {id: #{id}, operand_one: #{operand_one}, operand_two: #{operand_two}, answer: #{answer}, what: '#{what}'}"
  end
end
